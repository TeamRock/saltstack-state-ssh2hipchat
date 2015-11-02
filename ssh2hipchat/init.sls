/usr/local/bin/ssh2hipchat.sh:
  file.managed:
    - source: salt://ssh2hipchat/ssh2hipchat.sh
    - user: root
    - group: root
    - mode: 755
    - template: jinja

/etc/pam.d/sshd:
  file.append:
    - source: salt://ssh2hipchat/pam.d/ssh2hipchat
    - text: "session required pam_exec.so seteuid /usr/local/bin/ssh2hipchat.sh"

