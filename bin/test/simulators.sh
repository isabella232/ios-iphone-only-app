#!/usr/bin/env bash

set -e

make app
rm -f reports/*json

bundle exec cucumber -p default
bundle exec cucumber -p simulator_six_plus
bundle exec cucumber -p simulator_five

