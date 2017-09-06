salt-master -d; salt-minion -d
pkill -f salt; rm -rf /var/log/salt/* /var/run/salt* /var/cache/salt/*
ps aux
salt-run event.send old_input
salt-run event.send new_input
salt-call event.fire '{}' old_input
salt-call event.fire '{}' new_input
grep raise_error /var/log/salt/master
rpm -q zsh
ls /tmp/foo
add_keys
reset_env
salt-key -l accepted
vim /var/log/salt/master
vim /var/log/salt/minion
tail -f /var/log/salt/minion
