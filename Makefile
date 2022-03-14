
NAME = pipex

CC = gcc
CLFAGS = -Wall -Wextra -Werror
RM = rm -f

FILES = pipex \
		ft_split \
		pipex_utils2 \
		pipex_utils \


SRCS = $(addsuffix .c, $(FILES))

OBJS = $(addsuffix .o, $(FILES))

$(NAME): $(OBJS)
	$(CC) -o $(NAME) $^ 

%.o : %.c
	$(CC) -c $^ 

all: $(NAME)

deb: $(SRCS)
	$(CC) $(CFLAGS) $^ -o $(NAME) -g

clean:
	$(RM) $(OBJS)

fclean:
	$(RM) $(OBJS) $(NAME)

re: clean all

.PHONY: all clean fclean re deb

