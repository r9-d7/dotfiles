{ config, pkgs, ... }: {
    home = {
        username = "rossf";
	homeDirectory = "/home/rossf";
	stateVersion = "24.11";

	packages = with pkgs; [
	    fastfetch
	    cmatrix
	    git
	    starship
	    cava
	];
    };

    imports = 
      [
        ./homeconf
      ];
    
}
