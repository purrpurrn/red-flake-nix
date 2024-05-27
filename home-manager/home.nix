# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{ inputs, lib, config, pkgs, ... }:
{
  # You can import other home-manager modules here
  imports = [
    ./modules/zsh.nix
  ];

  # disable warning about mismatched version between Home Manager and Nixpkgs
  home.enableNixpkgsReleaseCheck = false;

  nixpkgs = {
    overlays = [];
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  #home.packages = with pkgs; [
  #  pkgs.oh-my-zsh
  #];

  xsession.enable = true;

  programs.home-manager.enable = false;
  programs.git.enable = true;
}
