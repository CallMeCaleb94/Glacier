{ config, pkgs, ... }:

{
  # ...

  services.nginx.enable = true;
  services.nginx.virtualHosts."prairiedog-mercat.ts.net" = {
    locations."/" = {
      root = "~/GitHub/KyniHomePage/index.html";
    };
  };

  services.nginx.virtualHosts."prairiedog-mercat.ts.net".enableACME = true;

  # ...
}
