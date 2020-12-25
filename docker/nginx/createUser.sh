#!/bin/sh

#!/bin/sh

adduser\
	-g 'Nginx-ft_services www user'\
	-h /home/www/\
	-s SHELL\
	-D\
	wwwft_services

# [-g] - info aboat user.
# [-h] - set home dir.
# [-s SHELL] - login to shell.
# [-D] - don't ask the pass.
# [wwwft_services] - user name.
