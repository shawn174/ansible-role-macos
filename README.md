# macOS ansible role

This is simple ansible role for configure hostname and install my favorite software from Homebrew and Mac App Store.

# Usage
To start from a fresh MacOS install, download and run `scripts/prep.sh` which installs all the dependencies  (Xcode, Rosetta, Homebrew, Ansible and git)

Once the prep is done, run: `ansible-playbook role.yml`

> Note: If some Homebrew commands fail, you might need to agree to Xcode's license or fix some other Brew issue. Run `brew doctor` to see if this is the case.

## Role Variables

See [`defaults/main.yml`](defaults/main.yml).

## Playbook

See [`tasks/main.yml`](tasks/main.yml).

## Author

Shawn Stephens

## License

See [LICENSE](LICENSE)
