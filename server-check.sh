#!/bin/bash

good() {
  echo ">> $1: OK!"
}

fail() {
  echo "=================================="
  echo "FATAL ERROR with $1"
  echo "=================================="
}

release=$(lsb_release -r | grep "Release:" | cut -d" " -f2)

if [[ "$release" = "18.04" ]]; then
  good "Release di ubuntu corretta"
else
  fail "Problemi con la relase di ubuntu necessaria la 18.04"
fi

if [[ "$release" = "19.04" ]]; then
  good "Release di ubuntu corretta"
else
  fail "Problemi con la relase di ubuntu necessaria la 18.04"
fi
