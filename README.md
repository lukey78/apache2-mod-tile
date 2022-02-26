# Apache2 w/ mod-tile

## Mountpoints

These mounts are required:

| mountpoint    | description                                                                                                                                |
|---------------|--------------------------------------------------------------------------------------------------------------------------------------------|
| /tiles        | The top directory with all tilesets of the map server - in this directory you should have the tileset identified by $MOD_TILE_TILESET_NAME |
| /modtile.sock | The socket configured in renderd/tirex for the mod_tile communication (modtile_socket_name in tirex.conf)                                  |


## Config

| variable                    | default     | description                               |
|-----------------------------|-------------|-------------------------------------------|
| DOMAIN                      | localhost   | Apache uses this as server name           |
| MOD_TILE_TILESET_NAME       | opentopomap | The name of the tileset in renderd/tirex  |


## Network

Apache listens on port 80. You should use this image behind a reverse proxy for SSL termination.
