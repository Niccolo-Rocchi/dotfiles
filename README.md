# .dotfiles

## Stow

```sh
stow --restow --no-folding <DIR>
```

## VSCode/Codium

List all extensions into a file:

```sh
codium --list-extensions > vscode/codium-extensions.list
```

Install all the extensions listed into a file (any line that starts with `#` will get ignored):

```sh
cat vscode/codium-extensions.list | grep -v '^#' | xargs -L1 codium --install-extension
```

## Fonts

Reload locally (`~/.local/share/fonts`) installed fonts:

```sh
fc-cache -f -v
```

## Dependencies (Debian)

To show all installed packages by `apt`:

```sh
apt list --installed > apt.list
```

To show all sources:

```sh
grep ^ /etc/apt/sources.list /etc/apt/sources.list.d/* > sources.list
```
