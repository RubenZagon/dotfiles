TO DO:

[x] Actualizar el `init.sh` para autoexportar todo

[ ] Añadir las funciones de Docker

[ ] Docker en navi

<h3 align="center">
  <span><img width="18" src="https://image.flaticon.com/icons/svg/226/226769.svg" alt="OSX - Icon made by Freepik from Flaticon" /></span>
  <span><img width="18" src="https://image.flaticon.com/icons/svg/226/226772.svg" alt="Linux - Icon made by Freepik from Flaticon" /></span>
  RubenZagon/dotfiles
  <!-- <a alt="CI status" href="https://github.com/denisidoro/dotfiles/actions"><img src="https://github.com/denisidoro/dotfiles/workflows/Tests/badge.svg" /></a> -->
  <!-- <a alt="GitHub release" href="https://github.com/denisidoro/dotfiles/releases"><img src="https://img.shields.io/github/v/release/denisidoro/dotfiles?include_prereleases" /></a> -->
</h3>

<p align="center">
  <!-- <img src="https://user-images.githubusercontent.com/3226564/70171435-78334280-16ad-11ea-8e2d-3388b2fb5085.gif" alt="Demo"> -->
  <br>
  <sub>Awesome personal dotfiles</sub>
</p>
<p align="center">
  <a href="#-installation">Installation</a>&nbsp;&nbsp;&nbsp;
  <a href="shell">Shell</a>&nbsp;&nbsp;&nbsp;
  <a href="scripts">Scripts</a>&nbsp;&nbsp;&nbsp;
  <a href="git/config">Git</a>&nbsp;&nbsp;&nbsp;
  <a href="docs">Docs</a>
</p>

## Minimal installation

If you only want to call scripts and to have the configs available locally:

```bash
# with homebrew or linuxbrew


# with git
git clone https://github.com/RubenZagon/dotfiles $HOME/.dotfiles
```

## Full installation

If you want to apply all dotfiles such as `.bashrc`, first proceed with the minimum installation then:

```bash
# with homebrew or linuxbrew
dot self install

# with git
$HOME/.dotfiles/bin/dot self install
```

:warning: It's recommended to backup your configs first.

## Calling scripts

There's a single entry point for most scripts, which is the `dot` command:
```bash
dot <ctx> <cmd> [<args>...] # example: dot rice pipes
```

## Documentation

Some scripts are documented in [/docs](docs). For all other scripts, run:
```bash
dot <ctx> <cmd> --help # example: dot rice pipes --help
```

## Shell startup performance

```bash
$ dot shell zsh benchmark
Benchmark #1: /usr/bin/time /bin/zsh -i -c exit
  Time (mean ± σ):      35.6 ms ±   3.0 ms    [User: 14.0 ms, System: 16.0 ms]
  Range (min … max):    32.7 ms …  48.8 ms    67 runs
```

## Overriding configs

Edit the following files accordingly:
```bash
# shell
vi $DOTFILES/local/zshrc

# git
vi $DOTFILES/local/gitconfig
```

## Inspiration
 * [rgomezcasas/dotfiles](https://github.com/rgomezcasas/dotfiles): README, some scripts and fine-tuning
 * [Tuurlijk/dotfiles](https://github.com/Tuurlijk/dotfiles): zsh startup snappiness
 * [raulanatol/dotfiles](https://github.com/raulanatol/dotfiles): Order and scripts