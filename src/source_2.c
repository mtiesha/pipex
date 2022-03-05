/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   source_2.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mtiesha < mtiesha@student.21-school.ru>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/04 19:55:42 by mtiesha           #+#    #+#             */
/*   Updated: 2022/03/04 20:00:54 by mtiesha          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/pipex.h"

void	*ft_memcpy(void *destination, const void *src, size_t n)
{
	unsigned char		*d;
	const unsigned char	*s;

	if (!destination && !src)
		return (NULL);
	d = destination;
	s = src;
	while (n-- > 0)
		*d++ = *s++;
	return (destination);
}

char	*ft_strdup(const char *str)
{
	unsigned char	*s;
	int				str_len;

	str_len = ft_strlen(str) + 1;
	s = (unsigned char *)malloc(str_len * sizeof(str[0]));
	if (s != NULL)
	{
		ft_memcpy(s, str, str_len++);
		return ((char *)(s));
	}
	return (NULL);
}

static void	*ft_memset(void *destination, int c, size_t n)
{
	unsigned char	*p;

	p = destination;
	while (n > 0)
	{
		*p = c;
		p++;
		n--;
	}
	return (destination);
}

static void	ft_bzero(void *s, size_t n)
{
	if (n == 0)
		return ;
	ft_memset(s, 0, n);
}

void	*ft_calloc(size_t number, size_t size)
{
	unsigned char	*s;

	s = (unsigned char *)malloc(number * size);
	if (s != NULL)
	{
		ft_bzero(s, number * size);
		return ((void *)(s));
	}
	return (NULL);
}
