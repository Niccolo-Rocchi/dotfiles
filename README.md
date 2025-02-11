# dotfiles

## Stow

`<DIR>` is a directory inside `dotfiles/` that need to be stowed. To do this, run:

```sh
stow --restow --no-folding <DIR>
```

When stowing, if a target is encountered which already exists but is a plain file (and hence not owned by any existing stow package), then normally Stow will register this as a conflict and refuse to proceed. In this case, run: `stow --adopt <DIR>` to replace the contents of `<DIR>` with the targets. Then, run something like: `git --reset hard` to restore the contents.

## Fish

Install `fish` shell and [starship](https://starship.rs/) prompt. Then, use `stow` for `fish`.

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
