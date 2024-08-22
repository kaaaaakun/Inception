#!/bin/bash
set -e

echo "start init"
mysqld --init-file=/init.sql
echo "done initi $?"
