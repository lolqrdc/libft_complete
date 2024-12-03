#NAME
NAME = libft.a

#DIRECTORIES 
SRC_DIR = src/
OBJS_DIR = obj/

#COMPILER & FLAGS
CC = CC
CFLAGS = -g -Wall -Wextra -Werror -I
RM = rm -f
AR = ar rcs 

#SOURCES FILES
FTIS_DIR = $(SRC_DIR)ft_is/ft_isalnum.c 
				$(SRC_DIR)ft_is/ft_isalpha.c
				$(SRC_DIR)ft_is/ft_isascii.c
				$(SRC_DIR)ft_is/ft_isdigit.c
				$(SRC_DIR)ft_is/isprint.c

FTTO_DIR = $(SRC_DIR)ft_to/ft_atoi.c
				$(SRC_DIR)ft_to/ft_itoa.c
				$(SRC_DIR)ft_to/ft_tolower.c
				$(SRC_DIR)ft_to/ft_toupper.c

FTMEM_DIR = $(SRC_DIR)ft_mem/ft_bzero.c
				$(SRC_DIR)ft_mem/ft_calloc.c
				$(SRC_DIR)ft_mem/ft_memchr.c
				$(SRC_DIR)ft_mem/ft_memcmp.c
				$(SRC_DIR)ft_mem/ft_memcpy.c
				$(SRC_DIR)ft_mem/ft_memmove.c
				$(SRC_DIR)ft_mem/ft_memset.c

FTPUT_DIR = $(SRC_DIR)ft_put/ft_putchar_fd.c
				$(SRC_DIR)ft_put/ft_putendl_fd.c
				$(SRC_DIR)ft_put/ft_putnbr_fd.c
				$(SRC_DIR)ft_put/ft_putstr_fd.c

FTSTR_DIR = $(SRC_DIR)ft_str/ft_putstr_fd.c
				$(SRC_DIR)ft_put/ft_strchr.c
				$(SRC_DIR)ft_put/ft_strdup.c
				$(SRC_DIR)ft_put/ft_striteri.c
				$(SRC_DIR)ft_put/ft_strjoin.c
				$(SRC_DIR)ft_put/ft_strlcat.c
				$(SRC_DIR)ft_put/ft_strlcpy.c
				$(SRC_DIR)ft_put/ft_strlen.c
				$(SRC_DIR)ft_put/ft_strmapi.c
				$(SRC_DIR)ft_put/ft_strncmp.c
				$(SRC_DIR)ft_put/ft_strnstr.c
				$(SRC_DIR)ft_put/ft_strrchr.c
				$(SRC_DIR)ft_put/ft_strtrim.c
				$(SRC_DIR)ft_put/ft_substr.c

FTLST_DIR = $(SRC_DIR)ft_lst/ft_lstadd_back_bonus.c
				$(SRC_DIR)ft_lst/ft_lstadd_front_bonus.c
				$(SRC_DIR)ft_lst/ft_lstclear_bonus.c
				$(SRC_DIR)ft_lst/ft_lstdelone_bonus.c
				$(SRC_DIR)ft_lst/ft_lstiter_bonus.c
				$(SRC_DIR)ft_lst/ft_lstlast_bonus.c
				$(SRC_DIR)ft_lst/ft_lstmap_bonus.c
				$(SRC_DIR)ft_lst/ft_lstnew_bonus.c
				$(SRC_DIR)ft_lst/ft_lstsize_bonus.c

FTPRINTF_DIR = $(SRC_DIR)ft_printf/ft_printf.c
				$(SRC_DIR)ft_printf/ft_print_char.c
				$(SRC_DIR)ft_printf/ft_print_decimal.c
				$(SRC_DIR)ft_printf/ft_print_hex.c
				$(SRC_DIR)ft_printf/ft_print_ptr.c
				$(SRC_DIR)ft_printf/ft_print_sign.c
				$(SRC_DIR)ft_printf/ft_print_str.c

GNL_DIR = $(SRC_DIR)get_next_line/get_next_line.c
						$(SRC_DIR)get_next_line/get_next_line_utils.c

#CONNECT ALL SOURCES FILES
SRC	=	$(FTIS_DIR) $(FTTO_DIR) $(FTMEM_DIR) $(FTMEM_DIR) $(FTPUT_DIR) $(FTSTR_DIR) $(FTLST_DIR) $(FTPRINTF_DIR) $(GNL_DIR)
OBJS = $(patsubst $(SRC_DIR)%.c,$(OBJS_DIR)%.o,$(SRC))

#RULES
all: $(NAME)

$(NAME): $(OBJS)
			@$(AR) $(NAME) $(OBJ)

$(OBJS_DIR)%.o: $(SRC_DIR)%.c
				$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJS)

fclean: clean 
	$(RM) $(NAME)

re: fclean all 

.PHONY : all clean fclean re