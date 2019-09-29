default:
	gcc -o exploit exploit.c
	./exploit
	./stack
stackguard:
	gcc -fno-stack-protector -o lab1 lab1.c
executable:
	gcc -z execstack -o lab1 lab1.c
nonexec:
	gcc -z noexecstack -o lab1 lab1.c
git:
	git add .
	git commit -m "asdf"
	git push

stack:
	su root
	gcc -o stack -z execstack -fno-stack-protector stack.c
	chmod 4755 stack
	exit
