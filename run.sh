#!/usr/bin/env bash
docker run -it --name dev --network host -v ~/code:/root/code devenv
