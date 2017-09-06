{% for minion_id in ('foo', 'bar', 'baz') %}
remove_unused_keys_{{ minion_id }}:
  wheel.key.delete:
    - match: {{ minion_id }}
{% endfor %}

update_fileserver:
  runner.error.error:
    - name: Exception
    - message: This is an error

install_zsh:
  local.state.single:
    - tgt: test
    - arg:
      - pkg.installed
      - zsh
    - kwarg:
        fromrepo: updates
