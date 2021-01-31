#!/bin/sh
# shellcheck shell=sh # Written to be posix compatible
# shellcheck disable=SC2034,SC1001

# BEDROCK LINUX STRATUM CHROOTER #

# Invoke with root device, mount point, stratum name and shell path.
# E.g: "script.sh /dev/sda1 /mnt linux /bin/bash"


# For capturing Bugs
# kills the script if anything returns false
set -e

# VERSION="1.0.0"

# RPRINT -> prints to standard error instead of standard output
alias RPRINT="printf '\\033[0;31m%s\\n''\\033[0;37m' >&2"  # Red

# Check for root
checkRoot() {
    if ! [ "$(id -u)" = 0 ]; then
        RPRINT "The Script needs to be executed as Root/Superuser!"
        exit 13
    fi

}

# Simplified Assertion #
die() { RPRINT "$2"; exit "$1" ;}

# Check #
command -v mount 1>/dev/null || die 126 "Command 'mount' is not executable on this environment"
command -v chroot 1>/dev/null || die 126 "Command 'chroot' is not executable on this environment"

checkRoot

mount "$1" "$2"

# The "--make-rslave" operations are needed for systemd support.
mount --rbind /dev "$2/bedrock/strata/$3/dev"
mount --make-rslave "$2/bedrock/strata/$3/dev"
mount -t proc /proc "$2/bedrock/strata/$3/proc"
mount --rbind /sys "$2/bedrock/strata/$3/sys"
mount --make-rslave "$2/bedrock/strata/$3/sys"
mount --rbind /tmp "$2/bedrock/strata/$3/tmp"

chroot "$2/bedrock/strata/$3" "$4"

: '
mount /dev/sda2 /boot
efibootmgr -c -d /dev/sda -p 2 -L "Linux" -l '\EFI\Linux\bzImage.efi'
'