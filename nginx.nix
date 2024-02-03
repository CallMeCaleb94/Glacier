{ config, pkgs, ... }:

{

services.nginx = {
  enable = true;
  recommendedOptimizations = true;
  virtualHosts."glacier.prairiedog-mercat.ts.net" = {
    locations."/" = {
    root = "/host/KyniHomepage/"
      };
    };
  };

users.users.nginx.extraGroups = [ "acme" ];
# Enable ACME for Let's Encrypt SSL certificateseee
security.acme = {
  certs."glacier.prairiedog-mercat.ts.net"; = {
  webroot = "/var/www/glacier.prairiedog-mercat.ts.net";
  email = "calebcodes94@gmail.com";
  group = "nginx";
  };
  accpetTerms = true;
  defaults.email = "calebcodes94@gmail.com";
};
}
