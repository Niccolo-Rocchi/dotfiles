# .dotfiles

## Stow

```sh
stow --restow --no-folding <DIR>
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
