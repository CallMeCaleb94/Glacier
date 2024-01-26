{ config, pkgs, ... }:

{
  # ...

  services.nginx.enable = true;
  services.nginx.virtualHosts."prairiedog-mercat.ts.net" = {
    enableACME = true;
    locations."/" = {
      root = "/home/cpb/GitHub/KyniHomePage";
    };
  };

  security.acme.acceptTerms = true;
  # ...
}
