#!/bin/sh

echo -n "$RCLONE_CONFIG" > ./rclone.conf
exec rclone --config ./rclone.conf $@