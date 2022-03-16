/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pipex_bonus.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mtiesha < mtiesha@student.21-school.ru>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/03 17:23:47 by mtiesha           #+#    #+#             */
/*   Updated: 2022/03/16 10:54:17 by mtiesha          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include_bonus/pipex_bonus.h"

static void	ft_hd(t_src **s, char *stop)
{
	pid_t	pid;
	int		fd[2];
	char	*line;

	if (pipe(fd) == -1)
		ft_errorer(s);
	pid = fork();
	if (pid == 0)
	{
		close(fd[0]);
		while (ft_gnl_sh(&line))
		{
			if (0 == ft_strncmp(line, stop, ft_strlen(stop)))
				exit(0);
			write(fd[1], line, ft_strlen(line));
		}
	}
	else
	{
		close(fd[1]);
		dup2(fd[0], 0);
		wait(NULL);
	}
}

static void	ft_child(t_src **s, int i, char **envp)
{
	pid_t	pid;
	int		fd[2];

	if (-1 == pipe(fd))
		ft_errorer(&(*s));
	pid = fork();
	if (-1 == pid)
		ft_errorer(&(*s));
	if (pid == 0)
	{
		if (i)
			close(fd[0]);
		dup2(fd[1], 1);
		if (-1 == execve((*s)->path[i], (*s)->cmd[i], envp))
			ft_errorer(&(*s));
	}
	else
	{
		close(fd[1]);
		dup2(fd[0], 0);
		waitpid(pid, NULL, 0);
	}
}

static void	ft_norm_cheat(t_src **s, char **argv, char **envp)
{
	int	i;

	i = 0;
	if (0 == ft_strncmp("here_doc", *argv, 8))
		ft_hd(s, *(++argv));
	else
		dup2((*s)->file1, 0);
	while (i < (*s)->gnr - 1)
		ft_child(s, i++, envp);
	dup2((*s)->file2, 1);
	if (-1 == execve((*s)->path[i], (*s)->cmd[i], envp))
		ft_errorer(s);
}

int	main(int argc, char **argv, char **envp)
{
	pid_t	pid;
	t_src	*src;

	if (argc < 5)
	{
		perror("Wrong arg");
		return (1);
	}
	else
	{
		if (!ft_check_arg_b(&src, envp, ++argv, --argc))
			ft_errorer(&src);
		pid = fork();
		if (-1 == pid)
			ft_errorer(&src);
		if (0 == pid)
			ft_norm_cheat(&src, argv, envp);
		waitpid(pid, NULL, 0);
		ft_freesher(&src);
	}
	return (0);
}
