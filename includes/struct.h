/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   struct.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: qurobert <qurobert@student.42lyon.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/12/07 21:27:25 by qurobert          #+#    #+#             */
/*   Updated: 2020/12/15 10:57:04 by qurobert         ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#ifndef STRUCT_H
# define STRUCT_H

typedef struct	s_flags
{
	int			zero;
	int			minus;
	int			width;
	int			prec;
	int			len;
	int			hexa;
	int			sign;
}				t_flags;

#endif
