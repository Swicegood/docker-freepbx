FROM tiredofit/freepbx
LABEL maintainer="Dave Conroy (dave at tiredofit dot ca)"

# My custom init script
ADD 10-freepbx /etc/cont-init.d/