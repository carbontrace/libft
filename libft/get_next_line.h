/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cterrill <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/10/18 20:12:05 by cterrill          #+#    #+#             */
/*   Updated: 2017/10/18 20:12:44 by cterrill         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_H
# define GET_NEXT_LINE_H

# include <stdio.h>
# include <fcntl.h>

# define BUFF_SIZE 1024

int				get_next_line(int const fd, char **line);

typedef struct	s_file
{
	int			fd;
	char		*buf;
}				t_file;

#endif
