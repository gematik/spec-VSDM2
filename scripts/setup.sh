#!/bin/bash
rm ./Resources/input/fsh/*.fsh
rm ./Resources/fsh-generated/resources/*
rm ./README.md
cat Readme_template.md USAGE.md > ./README.md
rm Readme_template.md
rm USAGE.md
rm INSTALL.md
rm ./scripts/setup.sh
