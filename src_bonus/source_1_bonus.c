/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   source_1_bonus.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mtiesha < mtiesha@student.21-school.ru>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/04 19:50:06 by mtiesha           #+#    #+#             */
/*   Updated: 2022/03/16 10:53:31 by mtiesha          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include_bonus/pipex_bonus.h"

static char	*ft_substr(char const *str, unsigned int start, size_t len)
{
	unsigned char	*substr;

	if (!str)
		return (NULL);
	if (start >= ft_strlen(str))
		return (ft_strdup(""));
	if ((start + len) > ft_strlen(str))
		len = ft_strlen(str) - start;
	substr = (unsigned char *)malloc((len + 1) * sizeof(char));
	if (substr != NULL)
	{
		ft_memcpy(substr, str + start, len);
		substr[len] = 0;
		return ((char *)(substr));
	}
	return (NULL);
}

static size_t	ft_counter(const char *s, char c)
{
	size_t	count;

	count = 0;
	while (*s)
	{
		while (*s == c)
			s++;
		if (*s != 0 && *s != c)
			count++;
		while (*s != c && *s != 0)
			s++;
	}
	if (count == 0)
		count = 1;
	return (count);
}

static size_t	ft_len_not_c(char const *s, char c)
{
	size_t	count;

	count = 0;
	while (*s != c && *s != 0)
	{
		count++;
		s++;
	}
	return (count);
}

static char	**ft_array_write(const char *str, char c, char **ret)
{
	size_t	i;

	i = 0;
	while (*str)
	{
		while (*str == c)
			str++;
		if (*str != 0 && *str != c)
		{
			ret[i] = ft_substr(str, 0, ft_len_not_c(str, c));
			if (ret[i] == NULL)
				return (NULL);
			i++;
		}
		while (*str != c && *str != 0)
			str++;
	}
	ret[i] = 0;
	return (ret);
}

char	**ft_split(char const *s, char c)
{
	char	**ret;
	size_t	count;

	if (!s)
		return (NULL);
	count = ft_counter(s, c);
	ret = (char **)ft_calloc(count + 1, sizeof(char *));
	if (ret == NULL)
		return (NULL);
	if (*s)
		ret = ft_array_write(s, c, ret);
	return (ret);
}
