{

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };


  outputs = inputs@{ nixpkgs, home-manager, ... }: {
    # replace 'joes-desktop' with your hostname here.
    nixosConfigurations.Glacier = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux"; 
      modules = [ 
        ./configuration.nix
      ];
    };
   };
  } 

