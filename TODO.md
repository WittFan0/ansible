[security]
Python encryption warning
downgrade nftables to iptables for better docker compatibility?
replace ufw with firewalld(?) because of incompatibility with docker
disable root login
endlessh for ubuntu
replace firejail with bubblewrap
what is the purpose of /etc/ssh/sshd_config.d/50-ansible.conf?


[functionality]
install Plex
use local DNS
configure avahi/systemd-resolved for printing
add directories to $PATH for user
install printer driver (move lib32-zlib from distro packages)
limit nvidia driver install to hosts with nvidia gpus
media server | /etc/dnsmasq.d/10-plex.conf | max_user_watches | NFS | SMB | WSDD(2)
grub-btrfs for ubuntu
add (btrfs) to binaries section of mkinitcpio.conf (ubuntu)
create filesystem | fstrim | BTRFS to mkinitcpio | fstab
get dracula wallpapers from git
install netdata monitor?
/etc/grub.d/42_isoboot?
gitconfig?


[optimization]
move snapper to its own playbook
pass proxy IP and names as a host variable
switch from ntpd to chrony
switch hostapd from deprecated systemd service to ifupdown (is ifupdown compatible with netplan?)
roll hardening plays into services being hardened
switch to using ansible.posix.authorized_key module
smartd.conf lineinfile
nullmailer-remotes lineinfile
tie python-docker to geerlingguy.docker
loop build /etc/skel/build/
build dirs for aur_builder
de-duplicate handlers: To ensure that a handler from a role is notified as opposed to one from outside the role with the same name, notify the handler by using its name in the following form: role_name : handler_name.
is alsa-utils needed?
docker directory structure?
move non-xdg global environment variables out of shell2xdg.yml