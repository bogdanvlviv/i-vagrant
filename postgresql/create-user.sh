#!/usr/bin/env bash

sudo -u postgres psql --command "CREATE USER $1 WITH SUPERUSER PASSWORD '$2'"
