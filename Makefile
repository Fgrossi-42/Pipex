
NAME = pipex

CC = gcc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f

FILES = pipex \
		ft_split \
		pipex_utils2 \
		pipex_utils \

SRCS_DIR = ./Src/
SRCS = $(addprefix $(SRCS_DIR), $(addsuffix .c, $(FILES)))

OBJS_DIR = ./Src/
OBJS = $(addprefix $(OBJS_DIR), $(addsuffix .o, $(FILES)))

.c.o: $(SRCS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(NAME): $(OBJS)
	$(CC) -o $(NAME) $^ 

all: $(NAME)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: clean all

.PHONY: bonus all clean fclean re