/usr/local/bin/ssh2hipchat.sh
  file.managed:
    - source: salt://ssh2hipchat/ssh2hipchat.sh
    - user: root
    - group: root
    - mode: 644
    - template: jinja

