# Simple Website docker

`docker pull jordond/siteBase`

Used to create a simple container with NodeJS and git installed.  Used in a few of my simple website projects ie [Power Hour](http://github.com/jordond/powerhour-site), [Hoogit](http://github.com/jordond/hoogit).  Used for easy site hosting and reverse proxying with nginx.  A sample nginx config is included in this repo.

## What it does

- Pulls the specified repository and branch.
- Runs `npm install`, `npm build`, and `npm start`.

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
  jordond/siteBase

```

## Copyright

```
Do whatever you want, don't blame me if stuff breaks.
```