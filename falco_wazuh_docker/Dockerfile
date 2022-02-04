FROM falcosecurity/falco:0.31.0
# install reqs for wazuh
RUN apt update
RUN apt install binutils binutils-common binutils-x86-64-linux-gnu distro-info-data file libbinutils libexpat1 libmagic-mgc libmagic1 libmpdec2 libpython3-stdlib libpython3.7-minimal libpython3.7-stdlib lsb-release mime-support python3 python3-minimal python3.7 python3.7-minimal -y
# for some reason procps must be after the install above to work, it fails otherwise
RUN apt install procps -y
# add startup script
COPY startup_script.sh /startup_script.sh
RUN chmod +x /startup_script.sh
# move the ossec conf
COPY ossec.conf /ossec.conf
#
CMD /startup_script.sh