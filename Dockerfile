FROM debian:12-slim

ENV TERM xterm

USER root

RUN apt-get update \
    && apt-get -y install openssh-client openssh-server telnet netcat-traditional bridge-utils net-tools iproute2 curl wget dbus socat nano dnsutils bind9-dnsutils nano iputils-ping nmap arp-scan jq gesftpserver isc-dhcp-server dhcp-client ufw iptables \
    && apt-get -y autoremove \
    && apt-get -y clean \ 
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

CMD ["sh", "-c", "tail -f /dev/null"]
                  
    
