/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   check_arg_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mtiesha < mtiesha@student.21-school.ru>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/04 11:46:26 by mtiesha           #+#    #+#             */
/*   Updated: 2022/03/16 10:54:00 by mtiesha          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include_bonus/pipex_bonus.h"

static int	ft_init(t_src **s, int ac)
{
	int	i;

	i = ac - 2;
	*s = (t_src *)malloc(sizeof(t_src));
	if (!s)
		return (0);
	(*s)->path = (char **)malloc((1 + i) * sizeof(char *));
	if (!(*s)->path)
		return (0);
	(*s)->path[i] = 0;
	(*s)->cmd = (char ***)malloc((1 + i) * sizeof(char **));
	if (!(*s)->cmd)
		return (0);
	(*s)->cmd[i] = 0;
	(*s)->file1 = 0;
	(*s)->file2 = 0;
	(*s)->gnr = ac - 2;
	return (1);
}

static void	ft_norm_cheat(t_src **s, char **argv, int flag)
{
	if (1 == flag)
	{
		(*s)->file1 = open(*(argv), O_RDONLY, 0777);
		if (-1 == (*s)->file1)
			ft_errorer(s);
	}
	else
	{
		(*s)->file2 = open(*(++argv), O_WRONLY | O_CREAT | O_TRUNC, 0777);
		if ((*s)->file2 == -1)
			ft_errorer(s);
	}
}

int	ft_check_arg_b(t_src **s, char **envp, char **argv, int argc)
{
	int	i;

	if (!ft_init(s, argc))
		ft_errorer(s);
	i = 0;
	if (0 != ft_strncmp("here_doc", *(argv), 8))
		ft_norm_cheat(s, argv, 1);
	else
	{
		(*s)->gnr--;
		argv++;
	}
	while (i < (*s)->gnr)
	{
		(*s)->cmd[i] = ft_split(*(++argv), ' ');
		if (!(*s)->cmd[i])
			ft_errorer(s);
		(*s)->path[i] = ft_get_env_cmd(envp, (*s)->cmd[i][0]);
		if (!(*s)->path[i])
			ft_errorer(s);
		i++;
	}
	ft_norm_cheat(s, argv, 0);
	return (1);
}
