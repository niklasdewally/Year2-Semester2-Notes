# vim:ft=bash
#!/bin/bash

# Run me using `source`!!


# if i am in the bin dir, or one of the course directories, go up one to the main root directory
dir=$(basename $PWD)
if [ $dir = "bin" ] || [ $dir = "CS2002" ] || [ $dir = "CS2006" ]
then 
  cd ..
fi

# it can now be assumed that we are in the root directory of ~/uni or University/year-2/semester-2
if [ $(basename $(pwd)) != "semester-2" ] && [ $(basename $(pwd)) != "uni" ] 
then
  echo "Please run this script inside the uni directory"
else
  # add bin stuff
  export PATH="$PWD/bin":${PATH}
fi
