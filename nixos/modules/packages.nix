{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (neovim.override {
      # no python2
      withPython = false;
    })
    libarchive
    psmisc
    sipcalc
    iperf
    openssl
    binutils
    file
    wget
    htop
    ag
    lsof
    tcpdump
    tmux
    rsync
    git
    tig
    python3
    strace
    bandwhich
    iotop
    manpages
    dnsutils
    netcat
    mtr
    whois
    usbutils
    pciutils
 ];
}
