#!/bin/bash

cat - >> /tmp/template.yml 

cloud-init devel schema --config-file /tmp/template.yml 

