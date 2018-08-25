
# dot-files

Copy `.bash_custom` into your home `~/` directory

Ensure your `.bash_profile` is loading your `.bashrc`

Add the following to your `.bashrc`
```
if [ -f ~/.bash_custom ]
then
	. ~/.bash_custom
fi
```