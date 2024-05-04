# macOS ansible role

This is simple ansible role for configure hostname and install my favorite software from Homebrew and Mac App Store.

# Usage
To start from a fresh MacOS install, run the scripts/prep.sh to get all the dependencies installed (Xcode, Rosetta, Homebrew and finally Ansible)

Once the prep is done, run: `ansible-playbook role.yml`

## Role Variables


See [`defaults/main.yml`](defaults/main.yml).


## Example Playbook

Example playbook:
```yaml
---
- name: macOS
  hosts: all
  connection: local
  become: false
  gather_facts: true

  vars_files:
  - defaults/main.yml

  tasks:
  - import_tasks: tasks/main.yml
```

## Author

Shawn Stephens

## License

See [LICENSE](LICENSE)
