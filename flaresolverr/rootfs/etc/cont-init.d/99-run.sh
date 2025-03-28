#!/usr/bin/env bashio
# shellcheck shell=bash
set -e

bashio::log.warning "Warning - minimum configuration recommended : 2 cpu cores and 4 GB of memory. Otherwise the system will become unresponsive and crash."

##############
# LAUNCH APP #
##############
pip install -r /app/requirements.txt --break-system-packages
pip install legacy-cgi --break-system-packages
python -u /app/flaresolverr.py
