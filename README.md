# Nik's dotfiles

## Stow

`<DIR>` is a directory inside `dotfiles/` that need to be stowed. To do this, run:

```sh
stow --restow --no-folding <DIR>
```

When stowing, if a target is encountered which already exists but is a plain file (and hence not owned by any existing stow package), then normally Stow will register this as a conflict and refuse to proceed. In this case, run: `stow --adopt <DIR>` to replace the contents of `<DIR>` with the targets. Then, run something like: `git --reset hard` to restore the contents.

## KDE

KDE configurations are managed by [konsave](https://github.com/Prayag2/konsave).

Create and activate a Python virtual environment into the `home` directory. Then install `konsave` in it:

```sh
python -m pip install konsave
```

Choose and import a `<theme>`:

```sh
konsave -i ~/dotfiles/konsave-themes/<theme>.knsv
```

Apply the `<theme>`:

```sh
konsave -a <theme>
```
Finally, log-out and log-it to see the theme applied.

Other possible flags are: `-h` for help, `-s` to save the current theme, `-l` to list all themes, `-r` to remove a theme, `-e` to export a theme, `-w` to wipe all themes.

### Troubleshooting

Some downloaded Plasma themes create problems, e.g. they overwrite the default theme. If `konsave -a <theme>` does not have the desired effect, it may be necessary to remove some of these folders/files `ls ~/.local/share/plasma*` and then reboot before using `konsave`.


## Fish

Install `fish` shell and the [starship](https://starship.rs/) prompt. Then, use `stow` for `fish`.

Remember: Python `venv` must be activated by:

```sh
python3 -m venv venv
source venv/bin/activate.fish
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

## Dependencies (Debian 12 Bookworm)

To record all installed packages by `apt`:

```sh
apt list --installed > .dependencies/apt.list
```

To record all sources:

```sh
grep ^ /etc/apt/sources.list /etc/apt/sources.list.d/* > .dependencies/sources.list
```
## Vim

Plugins are managed by [vim-plug](https://github.com/junegunn/vim-plug?tab=readme-ov-file) and their names are recorded into the `~/.vimrc` file.

To activate the plugins, install `vim-plug`. Then, open `vim` and do `:PlugInstall`. Reload `vim` to use the plugins.
