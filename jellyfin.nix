{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    jellyfin
    jellyfin-web
    jellyfin-ffmpeg
    jellyfin-media-player
  ];

  services.jellyfin = {
    enable = true;
    openFirewall = true;
  };

}
