/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pipex.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mtiesha < mtiesha@student.21-school.ru>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/03 17:23:47 by mtiesha           #+#    #+#             */
/*   Updated: 2022/03/05 20:23:41 by mtiesha          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/pipex.h"

static void	ft_swich_child(t_src **s, int *fd, char **envp)
{
	close(0);
	dup2((*s)->file1, 0);
	close(1);
	dup2(fd[1], 1);
	if (-1 == execve((*s)->path_cmd1, (*s)->cmd1_args, envp))
		ft_errorer(s);
}

static void	ft_swich_parent(t_src **s, int *fd, char **envp)
{
	close(0);
	dup2(fd[0], 0);
	close(1);
	dup2((*s)->file2, 1);
	if (-1 == execve((*s)->path_cmd2, (*s)->cmd2_args, envp))
		ft_errorer(s);
}

int	main(int argc, char **argv, char **envp)
{
	int		fd[2];
	pid_t	pid;
	t_src	*src;

	if (argc != 5)
	{
		perror("Wrong arg");
		return (1);
	}
	else
	{
		if (!ft_check_arg(&src, envp, argv))
			ft_errorer(&src);
		if (-1 == pipe(fd))
			ft_errorer(&src);
		pid = fork();
		if (-1 == pid)
			ft_errorer(&src);
		if (0 == pid)
			ft_swich_child(&src, fd, envp);
		waitpid(pid, NULL, 0);
		ft_swich_parent(&src, fd, envp);
	}
	return (0);
}
