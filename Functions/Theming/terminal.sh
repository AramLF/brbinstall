#!/bin/bash

brbinstall_theming_terminal_ps1 (){
echo -ne "
------------------------------------------------------------------------------
Change terminal PS1 in ~/.bashrc
------------------------------------------------------------------------------
"
if grep 'PS1=' ~/.bashrc > /dev/null; then
  echo 'PS1 is already there (changing it...)'
  sed -i 's#PS1=.*#PS1="\\\[\\033\[01;37m\\]┌─\[\\\[\\033\[01;32m\\]\\u\\\[\\033\[01;37m\\]]-\[\\\[\\033\[01;36m\\]\\h\\\[\\033\[01;37m\\]]-\[\\\[\\033\[01;33m\\]\\w\\\[\\033\[00;37m\\]\\\[\\033\[01;37m\\]]\\n\\\[\\033\[01;37m\\]└─\[\\\[\\033\[01;33m\\]\$\\\[\\033\[00;37m\\]\\\[\\033\[01;37m\\]]\\\[\\033\[00;37m\\] "#g' ~/.bashrc
  #sed -i 's#PS1=.*#PS1=""#g' ~/.bashrc
else
  echo 'PS1 is not there yet (adding it...)'
  echo 'PS1="\[\033[01;37m\]┌─[\[\033[01;32m\]\u\[\033[01;37m\]]-[\[\033[01;36m\]\h\[\033[01;37m\]]-[\[\033[01;33m\]\w\[\033[00;37m\]\[\033[01;37m\]]\n\[\033[01;37m\]└─[\[\033[01;33m\]$\[\033[00;37m\]\[\033[01;37m\]]\[\033[00;37m\] "' >> ~/.bashrc
fi
echo 'PS1 will be displayed in new terminals...'
}

brbinstall_theming_terminal_ps1_test(){
  if grep 'PS1' ~/.bashrc > /dev/null; then
    echo 'already there'
  else
    echo 'not there'
  fi
}
