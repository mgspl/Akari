{ pkgs, ... }:
{
  plugins = {
    treesitter = {
      enable = true;

      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        bash
        json
        lua
        make
        markdown
        nix
        regex
        toml
        vim
        vimdoc
        xml
        yaml
        qmljs
        c
        cpp
        python
        hyprlang
        html
      ];

      settings = {
        highlight.enable = true;
        incremental_selection.enable = true;
        indent.enable = true;
      };
      nixvimInjections = true;
    };
    treesitter-context.enable = true;
  };
}
