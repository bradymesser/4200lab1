default:
	gcc -z execstack -o shellcode shellcode.c
stackguard:
	gcc -fno-stack-protector -o lab1 lab1.c
executable:
	gcc -z execstack -o lab1 lab1.c
nonexec:
	gcc -z noexecstack -o lab1 lab1.c
