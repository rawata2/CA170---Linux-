#!/bin/bash

wget -q -O - https://api.flickr.com/services/feeds/photos_public.gne\?format\=json\&tags\=$1 |
grep description |
grep "<p>" |
sed -e "s/^.*.\" <p>/ <p>/" |
sed -e "s/\/p>\".*.$/\/p>/" |
sed -e "s/\/p> \".*.$/\/p>/" |
tr -d '\\' > $HOME/flickr.html