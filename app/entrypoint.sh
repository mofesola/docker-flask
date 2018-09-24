#!/usr/bin/env bash

case "${1}" in
  start )
    flask run --host=${HOST}
  ;;
  bash )
    /bin/bash
  ;;
  *)
    echo "specify a command. start_dns or bash"
  ;;
esac
