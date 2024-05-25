# firefox.nix

{ config, pkgs, inputs, ... }:

{
  programs.firefox = {
    enable = true;

    profiles.pascal = {
  
      isDefault = true;

      bookmarks = [
        {
          name = "RedFlake";
          tags = [ "redflake" ];
          keywords = "redflake";
          url = "https://github.com/red-Flake/";
        }
      ];

      settings = {
        "extensions.update.autoUpdateDefault" = false;
      };

      extensions = with inputs.firefox-addons.packages."${pkgs.system}"; [
        foxyproxy-standard
        dracula-dark-colorscheme
        darkreader
        wappalyzer
        waybackmachine
        ublock-oriin        
      ];

    };
  };

}
