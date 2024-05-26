{ config, lib, pkgs, modulesPath, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    git
    file
    tree
    vim
    nano
    wget
    unzip
    unrar
    htop
    btop
    gnumake
    cmake
    fastfetch
    lsb-release
    flat-remix-icon-theme
    meslo-lgs-nf
    nmap
    socat
    rlwrap
    thefuck
    dfc
    zsh
    openvpn
    firefox-bin
    bloodhound
    bloodhound-py
    ffuf
    feroxbuster
    kerbrute
    smbmap
    wafw00f
    nikto
    commix
    davtest
    httrack
    joomscan
    whatweb
    sqlitebrowser
    cewl
    crunch
    evil-winrm
    hashid
    hash-identifier
    hashcat
    john
    vscodium
    thc-hydra
    onesixtyone
    ncrack
    aircrack-ng
    reaverwps
    wifite2
    apktool
    #cutter
    #cutterPlugins.jsdec
    #cutterPlugins.rz-ghidra
    edb
    ghidra-bin
    jadx
    radare2
    social-engineer-toolkit
    bettercap
    macchanger
    responder
    tcpdump
    wireshark
    zeek
    proxychains-ng
    binwalk
    foremost
    scalpel
    pdf-parser
    pdfid
    soapui
    cryptsetup
    audacity
    dbeaver-bin
    filezilla
    gnome.ghex
    keepassxc
    powershell
    sonic-visualiser
    jq
    openldap
    ntp
    nfs-utils
    openssh
    dotnet-sdk_8
    dotnet-runtime_8
    dotnet-aspnetcore_8
    updog
    ngrok
    redis
    imagemagick
    strace
    clamav
    dig
    steghide
    stegseek
    xsser
    lsd
    bat
    android-tools
    samba
    oletools
    exiftool
    man
    less
    whois
    exploitdb
    grc
    dnsenum
    dnsrecon
    libvncserver
    burpsuite
    ldapdomaindump
    certipy
    netexec
    enum4linux-ng
    wordlists
    rockyou
    metasploit
    sqlmap
    freerdp3
    (import ./modules/setup-burp.nix { inherit pkgs; })
  ];
}
