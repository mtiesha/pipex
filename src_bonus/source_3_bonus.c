/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   source_3_bonus.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mtiesha < mtiesha@student.21-school.ru>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/04 20:01:33 by mtiesha           #+#    #+#             */
/*   Updated: 2022/03/16 10:53:13 by mtiesha          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include_bonus/pipex_bonus.h"

char	*ft_strjoin(char const *str1, char const *str2)
{
	size_t			str1_len;
	size_t			str2_len;
	size_t			str1str2_len;
	unsigned char	*ret;

	if (!str1 && !str2)
		return (ft_strdup(""));
	if (!str1)
		return (ft_strdup(str2));
	if (!str2)
		return (ft_strdup(str1));
	str1_len = ft_strlen(str1);
	str2_len = ft_strlen(str2);
	str1str2_len = str1_len + str2_len;
	ret = malloc((str1str2_len + 1) * sizeof(char));
	if (ret != NULL)
	{
		ft_memcpy(ret, str1, str1_len);
		ft_memcpy(ret + str1_len, str2, str2_len);
		ret[str1str2_len] = 0;
		return ((char *)(ret));
	}
	return (NULL);
}

int	ft_strncmp(const char *string1, const char *string2, size_t num)
{
	size_t	i;

	i = 0;
	if (num == 0 || !string1 || !string2)
		return (0);
	while (string1[i] != 0 && string1[i] == string2[i]
		&& i < num - 1 && string2[i] != 0)
		i++;
	return ((unsigned char)(string1[i]) - (unsigned char)(string2[i]));
}

size_t	ft_strlen(const char *string)
{
	int	i;

	i = 0;
	while (string[i] != '\0')
		i++;
	return (i);
}
