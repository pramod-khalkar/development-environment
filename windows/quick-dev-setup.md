## Quick windows setup

This guide you the initial quick setup and tools required for development

**Below are the tools basically will need**

- WSL latest version
- Ubuntu distro installation latest
- Windows terminal [MS store link](https://apps.microsoft.com/detail/9n0dx20hk701?hl=en-GB&gl=IN)
- OhMyZsh [link](https://ohmyz.sh/)
- Fuzzy search [fzf](https://github.com/junegunn/fzf)
- Install tmux if not install already [installation link](https://github.com/tmux/tmux/wiki/Installing)
- azure cli (if required) [installation link](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-linux?view=azure-cli-latest&pivots=apthttps://learn.microsoft.com/en-us/cli/azure/install-azure-cli-linux?view=azure-cli-latest&pivots=apt)
- kubectl (if required) [installation link](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)
- podman (if required) [installation link](https://podman.io/docs/installation)

### Installation steps

1. Install WSL & Distro(ubuntu) latest
   - Open PowerShell as administrator
   - run `wsl --install`
   - check `wsl --status`
   - List of available distro `wsl --list --online`
   - Install distro, in our case is ubuntu `wsl --install -d <distro-name>`
2. Install windows terminal going link mentioned above
3. Install ohmyzsh - Now your file is `.zshrc` - configure plugins below
   ```
   plugins=(
    fzf
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-autopair
    web-search
    )
   ```
   4.Install fzf and put this at last of `.zshrc`

```
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
```

5.Install tmux

- After installation use the [config](../tmux/.tmux.conf)
- You will face issue during pane navigation with vim/nvim `ctrl + j/h/k/l`. for this install `'christoomey/vim-tmux-navigator'`plugin in vim/nvim

6.For `azure-cli, kubectl, podman`you can install if you require this.podman is the alternative for docker

