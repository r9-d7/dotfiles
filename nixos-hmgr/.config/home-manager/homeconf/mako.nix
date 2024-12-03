{ pkgs, ... }:
let
  theme = (import ./theme) {inherit pkgs; };
in
{
  services.mako = {
    enable = true;
    anchor = "top-center";
    borderRadius = 8;
    defaultTimeout = 10000;
    font = "CascadiaCode";
    iconPath = "${theme.iconTheme.iconPath}";
    maxVisible = 3;
    borderSize = 1;
    actions = true;
  };
}

