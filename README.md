# pims1
pi Media Server basic set up with Plex, plex_meta_manager, Portainer and Dozzle. Used with a DOH setup on the pi itself thru cloudfare

Cloudflare DOH is set up on the pi itself, outside of this repository.
Plex values can be configured largely in the .env.sample file. Most
values are self explanatory. 

he outside services in this system are The Movie Database (tmdb), Trak TV (trakt), and a plex paid account for access to live tv and a plex claim number.

External volumes required: portainer_data and plex_config OR you can map the volumes to a local file.

Portainer and dozzle are added for monitoring. dozzle. I may switch to a grafana/prometheus system in the future.
