#!/bin/sh

set -u # Treat unset variables as an error.

veracrypt -t -v --dismount;

veracrypt -t -v --dismount --force