FROM tiredofit/freepbx:14-latest
LABEL maintainer="Dave Conroy (dave at tiredofit dot ca)"

### Edit init to add modules
RUN cat /etc/cont-init.d/10-freepbx | sed '/fwconsole ma downloadinstall voicemail.*/a fwconsole ma downloadinstall infoservices\nfwconsole ma downloadinstall featurecodeadmin\nfwconsole ma downloadinstall logfiles\nfwconsole ma downloadinstall conferences\nfwconsole ma downloadinstall callrecording\nfwconsole ma downloadinstall dashboard\nfwconsole ma downloadinstall music\nfwconsole ma downloadinstall callrecording\nfwconsole ma downloadinstall asteriskinfo\nfwconsole ma downloadinstall ringgroups\nfwconsole ma downloadinstall soundlang\nfwconsole ma downloadinstall recordings\nfwconsole ma downloadinstall announcement\nfwconsole ma downloadinstall ivr\nfwconsole ma downloadinstall setcid' > tmp-10-freepbx
RUN tmp-10-freepbx /etc/cont-init.d/10-freepbx
RUN chmod 744 /etc/cont-init.d/10-freepbx