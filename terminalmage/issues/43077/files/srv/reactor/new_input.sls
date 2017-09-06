{% for minion_id in ('foo', 'bar', 'baz') %}
remove_unused_keys_{{ minion_id }}:
  wheel.key.delete:
    - args:
      - match: {{ minion_id }}
{% endfor %}

update_fileserver:
  runner.error.error:
    - args:
      - name: Exception
      - message: This is an error

install_zsh:
  local.state.single:
    - tgt: test
    - args:
      - fun: pkg.installed
      - name: zsh
      - fromrepo: updates
