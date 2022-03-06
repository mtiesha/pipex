/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   check_arg.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mtiesha < mtiesha@student.21-school.ru>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/04 11:46:26 by mtiesha           #+#    #+#             */
/*   Updated: 2022/03/06 15:43:34 by mtiesha          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/pipex.h"

static void	ft_init(t_src **s)
{
	*s = (t_src *)malloc(sizeof(t_src));
	if (!s)
	{
		perror("Error");
		exit(1);
	}
	(*s)->path_cmd1 = NULL;
	(*s)->path_cmd2 = NULL;
	(*s)->cmd1_args = NULL;
	(*s)->cmd2_args = NULL;
	(*s)->file1 = 0;
	(*s)->file2 = 0;
}

int	ft_check_arg(t_src **s, char **envp, char **argv)
{
	ft_init(s);
	(*s)->cmd1_args = ft_split(argv[2], ' ');
	(*s)->cmd2_args = ft_split(argv[3], ' ');
	(*s)->path_cmd1 = ft_get_env_cmd(envp, (*s)->cmd1_args[0]);
	(*s)->path_cmd2 = ft_get_env_cmd(envp, (*s)->cmd2_args[0]);
	(*s)->file1 = open(argv[1], O_RDONLY, 0777);
	(*s)->file2 = open(argv[4], O_WRONLY | O_CREAT | O_TRUNC, 0777);
	if (!(*s)->path_cmd1 || !(*s)->path_cmd2
		|| (*s)->file1 == -1 || (*s)->file2 == -1)
		return (0);
	return (1);
}
