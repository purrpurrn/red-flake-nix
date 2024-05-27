{ pkgs, ... }:

{
    programs.zsh = {

       enable = true;

       initExtra = ''
            [[ ! -f ${./p10k.zsh;} ]] || source ${./p10k.zsh}
        '';

       enableCompletion = true;
       autosuggestion.enable = true;
       syntaxHighlighting.enable = true;
       shellAliases = {
            ll = "ls -l";
            update = "sudo nixos-rebuild switch";
       };

        oh-my-zsh = {
            enable = true;
            theme = "powerlevel10k";
            plugins = [
                "git"
                "npm"
                "history"
                "node"
                "rust"
                "deno"
                "powerlevel10k"
            ];
        };

    };

}