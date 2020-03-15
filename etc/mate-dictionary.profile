# Firejail profile for mate-dictionary
# This file is overwritten after every install/update
# Persistent local customizations
include mate-dictionary.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/mate/mate-dictionary

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.config/mate/mate-dictionary
whitelist ${HOME}/.config/mate/mate-dictionary
include whitelist-common.inc

apparmor
caps.drop all
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none

disable-mnt
private-bin mate-dictionary
private-etc alternatives,ca-certificates,crypto-policies,fonts,pki,resolv.conf,ssl
private-opt mate-dictionary
private-dev
private-tmp

memory-deny-write-execute
