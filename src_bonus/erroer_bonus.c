/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   erroer_bonus.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mtiesha < mtiesha@student.21-school.ru>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/04 11:10:31 by mtiesha           #+#    #+#             */
/*   Updated: 2022/03/16 10:54:07 by mtiesha          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include_bonus/pipex_bonus.h"

void	ft_freesher(t_src **s)
{
	if (*s)
	{
		if ((*s)->path)
			ft_free_spl((*s)->path);
		if ((*s)->cmd)
			ft_free_arr_spl((*s)->cmd);
		free(*s);
		*s = NULL;
	}
}

void	ft_errorer(t_src **s)
{
	perror("Error");
	ft_freesher(&(*s));
	exit(1);
}
