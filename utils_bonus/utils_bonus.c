/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils_bonus.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mtiesha < mtiesha@student.21-school.ru>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/02 19:19:49 by mtiesha           #+#    #+#             */
/*   Updated: 2022/03/16 08:35:25 by mtiesha          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "utils_bonus.h"

void	ft_free_spl(char **spl)
{
	int	i;
	int	k;

	k = 0;
	i = 0;
	while (spl[i])
		i++;
	while (k < i)
	{
		free(spl[k]);
		spl[k] = NULL;
		k++;
	}
	free(spl);
	spl = NULL;
}

void	ft_free_arr_spl(char ***a_spl)
{
	int	i;

	i = 0;
	while (a_spl[i])
	{
		ft_free_spl(a_spl[i]);
		i++;
	}
	free (a_spl);
	a_spl = 0;
}

int	ft_gnl_sh(char **line)
{
	char	*buffer;
	char	ch;
	int		i;
	int		rb;

	i = 0;
	rb = 0;
	buffer = (char *)malloc(10000 * sizeof(char));
	if (!buffer)
		return (-1);
	rb = read(0, &ch, 1);
	while (rb && ch && ch != '\n')
	{
		if (ch && ch != '\n')
			buffer[i] = ch;
		rb = read(0, &ch, 1);
		i++;
	}
	buffer[i] = '\n';
	buffer[++i] = '\0';
	*line = buffer;
	free(buffer);
	return (rb);
}
