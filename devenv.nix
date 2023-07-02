{ pkgs, ... }:

{
  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [ 
    pkgs.git 
    pkgs.wget
  ];

  # https://devenv.sh/scripts/
  scripts.lvim-install.exec = ''
    wget https://github.com/neovim/neovim/releases/download/stable/nvim-macos.tar.gz   
    xattr -c ./nvim-macos.tar.gz
    tar xzvf nvim-macos.tar.gz
    mkdir -p ~/bin/; cp -r nvim-macos/bin/* $_
    mkdir -p ~/share/; cp -r nvim-macos/share/* $_
    mkdir -p ~/lib/; cp -r nvim-macos/lib/* $_
  '';
 
  enterShell = ''
    lvim-install 
  '';

  # https://devenv.sh/languages/
  # languages.nix.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";

  # See full reference at https://devenv.sh/reference/options/
}
