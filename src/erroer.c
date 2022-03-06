/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   erroer.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mtiesha < mtiesha@student.21-school.ru>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/04 11:10:31 by mtiesha           #+#    #+#             */
/*   Updated: 2022/03/06 15:46:35 by mtiesha          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/pipex.h"

static void	ft_freesher(t_src **s)
{
	if (*s)
	{
		if ((*s)->path_cmd1)
			free((*s)->path_cmd1);
		if ((*s)->path_cmd2)
			free((*s)->path_cmd2);
		if ((*s)->cmd1_args)
			ft_free_spl((*s)->cmd1_args);
		if ((*s)->cmd2_args)
			ft_free_spl((*s)->cmd2_args);
		if ((*s)->file1 != 0)
			close((*s)->file1);
		if ((*s)->file2 != 0)
			close((*s)->file2);
		if (*s)
			free(*s);
	}
}

void	ft_errorer(t_src **s)
{
	perror("Error");
	ft_freesher(&(*s));
	exit(1);
}
