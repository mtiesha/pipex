NAME = pipex

HEADER = ./include/pipex.h ./utils/utils.h 

SRCS_UTILS = ./src/check_arg.c ./src/check_env.c ./src/source_1.c \
		./src/source_2.c ./src/erroer.c ./src/source_3.c ./utils/utils.c

SRCS = ./src/pipex.c ${SRCS_UTILS}

RM = rm -rf

CFLAGS = -g -Wall -Wextra -Werror

OBJ = ${SRCS:.c=.o}

#BONUS_OBJ = ${SRCS_BONUS:.c=.o}

CC = gcc

all : ${NAME}

${NAME} : ${OBJ} Makefile ${HEADER}
	@${CC} -o ${NAME} ${OBJ} ${HEADER}
	@echo "\033[32mCompiled"

#bonus : $(BONUS)

#$(BONUS) : $(BONUS_OBJS) Makefile pipex.h ./libft/libft.h 
#	@$(MAKE) all -C ./libft
#	${CC} ${CFLAGS} -c ${SRCS_BONUS}
#	${CC} ${CFLAGS} ${BONUS_OBJ} ${LIBFT} push_swap.h get_next_line.h -o ${BONUS}

%.o : %.c Makefile ${HEADER}
	@${CC} ${CFLAGS} -c -o $@ $<

clean :
	@${RM} ${OBJ}
	@echo "\033[32mClean"

fclean : clean
	@${RM} ${NAME}
	@echo "\033[32mFclean"

whereisdetonator :
	@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
		@echo  "\033[41;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@sleep 0.14
	@echo  "\033[25;5m                  "
	@echo "          |\_|\				"
	@echo "          | a_a\				"
	@echo "          | |  ]				"
	@echo "      ____| '-\___			"
	@echo "     /.----.___.-'\			"
	@echo "    //        _    \			"
	@echo "   //   .-. (~v~) /|			"
	@echo "  |'|  /\:  .--  / \			"
	@echo " // |-/  \_/____/\/~|		"
	@echo "|/  \ |  []_|_|_] \ |		"
	@echo "| \  | \ |___   _\ ]_}		"
	@echo "| |  '-' /   '.'  |			"
	@echo "| |     /    /|:  | 			"
	@echo "| |     |   / |:  /\			"
	@echo "| |     /  /  |  /  \		"
	@echo "| |    |  /  /  |    \		"
	@echo "\ |    |/\/  |/|/\    \		"
	@echo " \|\ |\|  |  | / /\/\__\		"
	@echo "  \ \| | /   | |__			"
	@echo "       / |   |____)			"
	@echo "       |_/		    \033[0m"
	@clear
	@echo "kek"
re : fclean all

.PHONY : clean fclean all re whereisdetonator