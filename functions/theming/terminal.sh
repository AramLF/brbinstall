#!/bin/bash

brbinstall_theming_terminal_ps1 (){
echo -ne "
==============================================================================
Change terminal PS1 in ~/.bashrc
==============================================================================
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

brbinstall_theming_terminal_ps1-test(){
  if grep 'PS1' ~/.bashrc > /dev/null; then
    echo 'already there'
  else
    echo 'not there'
  fi
}

brbinstall_theming_terminal_ps1-root (){
echo -ne "
==============================================================================
Change terminal PS1 in /root/.bashrc
==============================================================================
"
if grep 'PS1=' /root/.bashrc > /dev/null; then
  echo 'PS1 is already there (changing it...)'
  sudo sed -i 's#PS1=.*#PS1="\\\[\\033\[01;37m\\]┌─\[\\\[\\033\[01;32m\\]\\u\\\[\\033\[01;37m\\]]-\[\\\[\\033\[01;36m\\]\\h\\\[\\033\[01;37m\\]]-\[\\\[\\033\[01;33m\\]\\w\\\[\\033\[00;37m\\]\\\[\\033\[01;37m\\]]\\n\\\[\\033\[01;37m\\]└─\[\\\[\\033\[01;33m\\]\$\\\[\\033\[00;37m\\]\\\[\\033\[01;37m\\]]\\\[\\033\[00;37m\\] "#g' /root/.bashrc
  #sed -i 's#PS1=.*#PS1=""#g' /root/.bashrc
else
  echo 'PS1 is not there yet (adding it...)'
  sudo sh -c 'echo 'PS1="\[\033[01;37m\]┌─[\[\033[01;32m\]\u\[\033[01;37m\]]-[\[\033[01;36m\]\h\[\033[01;37m\]]-[\[\033[01;33m\]\w\[\033[00;37m\]\[\033[01;37m\]]\n\[\033[01;37m\]└─[\[\033[01;33m\]$\[\033[00;37m\]\[\033[01;37m\]]\[\033[00;37m\] "' >> /root/.bashrc'
fi
echo 'PS1 will be displayed in new terminals...'
}