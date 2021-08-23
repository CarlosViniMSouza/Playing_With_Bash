# An framework bash for community:

FROM https://hub.docker.com/r/ellerbrock/bash-it/ AS base

docker pull ellerbrock/bash-it
docker run -it ellerbrock/bash-it
docker run -it ${PWD}:/data ellerbrock/bash-it
docker run -it myVolName:/app ellerbrock/bash-it


docker run -it \
  -v import:/import \
  -v export:/export \
 ellerbrock/bash-it -c "cp -R /import/* /export"

docker run -it \
  -v import:/import \
  -v ${PWD}:/export \
ellerbrock/bash-it -c "tar -cvjf /export/backup.tar.bz2 /import/"

docker run -it ellerbrock/bash-it -c "ls -alF /"
docker run -it -u root ellerbrock/bash-it

# It's necessary that Docker Desktop installed.