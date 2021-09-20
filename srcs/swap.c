#include "../push_swap.h"

void	swap(t_stack *stack)
{
	t_node	*first;
	t_node	*second;

	first = stack->head;
	second = stack->head->next;
	if (stack->size < 2)
		return ;
	if (stack->size == 2)
		stack->tail = first;
	first->prev = stack->head->next;
	first->next = stack->head->next->next;
	second->next = first;
	second->prev = stack->tail;
	stack->tail->next = second;
	stack->head = second;
}
