# zobees/stationeers

A generic docker image for the Stationeers dedicated server.

## Features

 * Installs or updates the server on startup.
 * Drops privileges to a configurable UID and GID.

## To do

 * Handle graceful shutdown via the server telnet console.
 * Include a Docker healthcheck.

## Usage

``` sh
docker run -d -v $PWD/data:/data \
  -p 27500:27500 \
  -p 27500:27500/udp \
  -p 27015:27015 \
  -p 27015:27015/udp \
  zobees/stationeers
```

## Configuration

The following environment variables are used to congigure the server:

Variable          | Default              | Description
----------------- | -------------------- | -----------
WORLD_NAME        | stationeers          | Specifies the name of the save directory
WORLD_TYPE        | Terrain              | The type of world (Space, Mars or Terrain)
SERVER_NAME       | A Stationeers Server | The visible name of the server
AUTOSAVE_INTERVAL | 300                  | The duration between autosaves in seconds

Note that this is a preliminary implementation and these are likely to change (and improve).

## Known issues

 * You MUST shutdown the server via the console since graceful shutdown has not yet been implemented.
 * Healthcheck has not yet been implemented.
 * Configuration environment variables override default.ini.
 * The server port is not currently configurable.

## Other options

See the source code for this and its base image for more information:

 * [zobees/stationeers](https://github.com/zobees/docker-stationeers)
 * [zobees/steamcmd](https://github.com/zobees/docker-steamcmd)

## Disclaimer

These containers are designed to be used by Zobees to host game servers for friends and family, and therefore may not suit all use cases.  That said, we are all for flexibility and would welcome pull requests and issues.
