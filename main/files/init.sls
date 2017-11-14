testfile:
  file.managed:
    - name: /root/testfile
    - source: salt://files/templates/testfile
    - template: jinja
    - mode: 640
    - user: root
    - group: wheel
