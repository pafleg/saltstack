{% for user, data in pillar.get('admin_users').items() %}
user_{{ user }}:
  user.present:
    - name: {{ user }}
    - home: /home/{{ user }}
    - shell: {{ data['shell'] }}
    - uid: {{ data['uid'] }}
    - gid_from_name: {{ data['gid_from_user'] }}
    - groups: {{ data['groups'] }}
{% endfor %}
