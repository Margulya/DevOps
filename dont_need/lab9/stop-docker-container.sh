#!/bin/bash
docker -H localhost:5566 ps -a -q | xargs docker -H localhost:5566 stop | xargs docker -H localhost:5566 rm