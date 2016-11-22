FROM fedora:24

# Install packages
RUN dnf -y install mock rpm-build hostname zsh tmux vim-enhanced bind-utils telnet net-tools findutils sudo man man-pages less

# Add my user (home directory provided via volume)
RUN useradd -u 1000 erik -s /usr/bin/zsh

# Grant privileges to build using mock
RUN gpasswd -a erik mock

# Grant sudo access
RUN echo "erik ALL=(ALL) NOPASSWD: ALL" >/etc/sudoers

# Run container as my user
USER erik
WORKDIR /home/erik
CMD zsh -l
