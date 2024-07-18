# classic-dockerfile

Build our docker container

# Purpose

As a first step to our build in darklang-classic, we need to build the container,
and save it for future steps by pushing it to a repo. However, we do not want
to share the keys to push to the docker container publicly (obviously). The
solution was making a separate repo and not sharing the keys from it.

# Usage

If you update this repo and push, the tag(s) will be automatically derived from
the current git hash - see `tag-version.sh`.

To use in CI, you'll then go to the darklang/dark repo's `.circleci/config.yaml`
and update `.executors.in-container.docker[0].image`

The `./build` script is included in case you need to build a docker image locally.

If there are changes upstream (in the dark-classic repo), you can copy them here
with `./clone-from-dark-repo.sh`.