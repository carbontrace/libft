/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstdel.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cterrill <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/04/21 11:09:36 by cterrill          #+#    #+#             */
/*   Updated: 2017/04/22 22:30:16 by cterrill         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstdel(t_list *lst)
{
	t_list	*nextlst;

	while (lst != NULL)
	{
		nextlst = lst->next;
		free(lst->content);
		free(lst);
		lst = nextlst;
	}
}
