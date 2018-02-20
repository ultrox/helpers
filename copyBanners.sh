#!/bin/bash
rsync --rsync-path="sudo rsync" ./banners.tar done:/home/work/static/ \
  && ssh done 'sudo tar -xf /home/work/static/banners.tar -C /home/work/static'


