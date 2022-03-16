/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils_bonus.h                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mtiesha < mtiesha@student.21-school.ru>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/02 19:26:57 by mtiesha           #+#    #+#             */
/*   Updated: 2022/03/16 10:54:48 by mtiesha          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef UTILS_BONUS_H
# define UTILS_BONUS_H
# include <stdlib.h>
# include "../include_bonus/pipex_bonus.h"

void	ft_free_spl(char **spl);
void	ft_free_arr_spl(char ***a_spl);
int		ft_gnl_sh(char **line);

#endif