#!/usr/bin/env bash
docker build --network host --tag devenv --file Dockerfile .
