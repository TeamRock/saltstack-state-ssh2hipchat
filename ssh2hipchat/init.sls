/usr/local/bin/ssh2hipchat.sh:
  file.managed:
    - source: salt://ssh2hipchat/ssh2hipchat.sh
    - user: root
    - group: root
    - mode: 644
    - template: jinja

/etc/pam.d/ssh2hipchat:
  file.managed:
    - source: salt://ssh2hipchat/pam.d/ssh2hipchat
    - user: root
    - group: root
    - mode: 644

