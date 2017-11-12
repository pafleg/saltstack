testfile:
  file.managed:
    - name: /root/testfile
    - source: salt://files/templates/testfile
    - template: jinja2
    - mode: 640
    - user: root
    - group: wheel