# SS-LAB
This repository contains all the programs for System Software and Operating System Lab (Sub Code: 17CSL67)

## Installing Lex and Yacc in Ubuntu
```
sudo apt update
sudo apt install flex bison
```

## Execution
### For Lex
```
lex program_name.l
cc lex.yy.c
./a.out
```

### For Lex and YACC combined
```
lex program_name.l
yacc -d program_name.y
cc lex.yy.c y.tab.c
./a.out
```
