# Simple Website docker

`docker pull jordond/base`

Used to create a simple container with NodeJS and git installed.  Used in a few of my simple website projects ie [Power Hour](http://github.com/jordond/powerhour-site), [Hoogit](http://github.com/jordond/hoogit).  Used for easy site hosting and reverse proxying with nginx.

## What it does

- Pulls the specified repository and branch.
- Runs `npm install`, `npm build`, and `npm start`.

## Included

- A sample nginx config to reverse proxy to this docker container.
- A script to easily create this docker container from the project folder.
- A sample .drone.yml config file to be used with Drone.io
- A script to be used with Drone to gracefully restart the docker container.
  - Note: If the container doesn't exist, the script will exit cleanly preventing a failed build.

## Configuration

- Container exposes `8080` so map it with `-p xxxx:8080`
- Repository `-e repo=<:user>/<:repo>`
- Branch `-e branch=develop`  ***defaults*** to repo's default branch

## Running

Make sure your projects `package.json` includes the listed scripts above.

Build with:

```
docker run -d \
  --name=testSite \
  --restart=always \
  -p 9400:8080 \
  -e repo=jordond/test-site
  -e branch=awesomeFeature
  jordond/basesite

```

## Copyright

```
Do whatever you want, don't blame me if stuff breaks.
```