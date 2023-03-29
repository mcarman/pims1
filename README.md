# pims1
pi Media Server basic set up with Plex, plex_meta_manager, Portainer and Dozzle. Used with a DOH setup on the pi itself thru cloudflare

Cloudflare DOH is set up on the pi, outside of this repository. 
Plex values can be configured largely in the .env.sample file. Most values are self explanatory. 
The outside services in this system are at The Movie Database (TMDB), Trakt TV (trakt).
And a plex paid account for access to live tv thid is to grt thr plex claim.

External volumes required: portainer_dataq and plex_config OR you can map the volumes to a local file.

Portainer and dozzle are added for monitoring. dozzle. I may switch to a grafana/prometheus system in the future.
