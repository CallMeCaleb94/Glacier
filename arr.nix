{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    jellyseerr
    prowlarr
    radarr
    sonarr
    unpackerr
    qbittorrent
  ];
}
