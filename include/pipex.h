/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pipex.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mtiesha < mtiesha@student.21-school.ru>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/02 10:27:15 by mtiesha           #+#    #+#             */
/*   Updated: 2022/03/05 14:52:21 by mtiesha          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PIPEX_H
# define PIPEX_H
# include <unistd.h>
# include <stdlib.h>
# include <stdio.h>
# include <fcntl.h>
# include <sys/wait.h>
# include "../utils/utils.h"

typedef struct s_src {
	char	*path_cmd1;
	char	*path_cmd2;
	char	**cmd1_args;
	char	**cmd2_args;
	int		file1;
	int		file2;
}	t_src;

/* get functions */
char	*ft_get_env_cmd(char **envp, char *command);
int		ft_check_arg(t_src **s, char **envp, char **argv);

/* source functions */
void	ft_errorer(t_src **s);

/* sub functions */
size_t	ft_strlen(const char *string);
void	*ft_calloc(size_t number, size_t size);
char	*ft_strdup(const char *str);
void	*ft_memcpy(void *destination, const void *src, size_t n);
char	**ft_split(char const *s, char c);
int		ft_strncmp(const char *string1, const char *string2, size_t num);
char	*ft_strjoin(char const *str1, char const *str2);

#endif