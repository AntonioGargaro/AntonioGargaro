#!/bin/bash
# Permissions
sudo chown -R $USER /usr/local/etc/bash_completion.d /usr/local/lib/pkgconfig /usr/local/lib/python3.7/site-packages /usr/local/share/aclocal /usr/local/share/doc /usr/local/share/info /usr/local/share/locale /usr/local/share/man /usr/local/share/man/man1 /usr/local/share/man/man3 /usr/local/share/man/man5 /usr/local/share/man/man7 /usr/local/share/man/man8 /usr/local/share/zsh /usr/local/share/zsh/site-functions /usr/local/var/log
chmod u+w /usr/local/etc/bash_completion.d /usr/local/lib/pkgconfig /usr/local/lib/python3.7/site-packages /usr/local/share/aclocal /usr/local/share/doc /usr/local/share/info /usr/local/share/locale /usr/local/share/man /usr/local/share/man/man1 /usr/local/share/man/man3 /usr/local/share/man/man5 /usr/local/share/man/man7 /usr/local/share/man/man8 /usr/local/share/zsh /usr/local/share/zsh/site-functions /usr/local/var/log

if ! [ -x "$(command -v zsh)" ]; then
  echo 'Installing zsh' >&2
  brew install zsh
fi

echo 'Swapping .zshrc'
rm ~/.zshrc
cp ./.zshrc ~/.zshrc

chsh -s /bin/zsh
