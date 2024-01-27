{ config, pkgs, ... }:

{
  # ...

  services.nginx.enable = true;
  services.nginx.virtualHosts."prairiedog-mercat.ts.net" = {
    #enableACME = true;
    #acmeRoot = "/var/lib/acme-custom";
    #forceSSL = true;  # This enforces redirection from HTTP to HTTPS 
    locations."/" = {
      root = "/home/cpb/GitHub/KyniHomePage";
    };
  };

  #security.acme.acceptTerms = true;
  # ...
}
