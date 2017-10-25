NAME        =    libft.a
CC          =    gcc
CFLAGS      =    -Wall -Wextra -Werror
AR          =    ar

FILENAMES    +=    ft_abs.c \
					 ft_atoi.c \
				   ft_bzero.c \
					 get_next_line.c \
				   ft_isalnum.c \
				   ft_isalpha.c \
				   ft_isascii.c \
				   ft_isdigit.c \
				   ft_islower.c \
				   ft_isprint.c \
				   ft_isupper.c \
				   ft_itoa.c \
				   ft_memalloc.c \
				   ft_memccpy.c \
				   ft_memchr.c \
				   ft_memcmp.c \
				   ft_memcpy.c \
				   ft_memdel.c \
				   ft_memmove.c \
				   ft_memset.c \
				   ft_putchar.c \
				   ft_putchar_fd.c \
				   ft_putendl.c \
				   ft_putendl_fd.c \
				   ft_putnbr.c \
				   ft_putnbr_fd.c \
				   ft_putstr.c \
				   ft_putstr_fd.c \
				   ft_strcat.c \
				   ft_strchr.c \
				   ft_strclr.c \
				   ft_strcmp.c \
				   ft_strcpy.c \
				   ft_strdel.c \
				   ft_strdup.c \
				   ft_strndup.c \
				   ft_strequ.c \
				   ft_striter.c \
				   ft_striteri.c \
				   ft_strjoin.c \
				   ft_strlcat.c \
				   ft_strlen.c \
				   ft_strmap.c \
				   ft_strmapi.c \
				   ft_strncat.c \
				   ft_strncmp.c \
				   ft_strncpy.c \
				   ft_strnequ.c \
				   ft_strnew.c \
				   ft_strnstr.c \
				   ft_strrchr.c \
				   ft_strsplit.c \
				   ft_strstr.c \
				   ft_strsub.c \
				   ft_strtrim.c \
				   ft_tolower.c \
				   ft_toupper.c \
				   ft_swapchar.c \
				   ft_swapbyte.c \
				   ft_strrev.c \
				   ft_nlen.c \
					 ft_lerpi.c \
					 ft_lstlen.c \
				   ft_lstnew.c \
				   ft_lstdelone.c \
				   ft_lstadd.c \
				   ft_lstdel.c \
				   ft_lstiter.c \
				   ft_lstmap.c \
					 ft_lstrev.c \
					 ft_tablen.c

SOURCES        =    $(FILENAMES)
OBJECTS        =    $(FILENAMES:.c=.o)

.SILENT:

.PHONY: all multi

#multi:
#	        $(MAKE) -j8 all

all: $(NAME)

test:
	make -C ~/Desktop/moulitest/ libft_bonus

clean:
	@rm -rf $(OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all

$(OBJECTS): $(SOURCES)
	$(CC) $(CFLAGS) -c $^

$(NAME): $(OBJECTS)
	@printf '\033[32m[ ✔ ] %s\n\033[0m' "libft Created"
	@$(AR) crs $@ $(OBJECTS)

#%.o: srcs/%.c
#	$(CC) $(CFLAGS) -c $< -o $@
