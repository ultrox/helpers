#!/bin/bash
# Gets you the name of dir
# DIR=${PWD##*/}  

REPO="ssh://git-codecommit.eu-central-1.amazonaws.com/v1/repos/";
# "DMC-Theme"
declare -a DIR=("education-canon" "inside-rittal" "digital-eins" "a1-ready2order" "a1-ready2order-de" "customer-one" "odoscope" "software4business" "dell-workstations" "boilerplate" "mein-digitales-unternehmen");

BASE=$(pwd);

for i in "${DIR[@]}"
do
   echo "$i"
   git -C $i init \
   && git -C $i add -A \
   && git -C $i commit -m "First commit on on codecomit $i" \
   && git -C $i remote add origin "$REPO$i" \
   git -C $i push origin master
   # aws codecommit create-repository --repository-name $i --repository-description 'Testing seperate theme'
done

