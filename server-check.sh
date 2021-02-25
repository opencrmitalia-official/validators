#!/bin/bash

# https://misc.flogisoft.com/bash/tip_colors_and_formatting

good() {
  echo ">> $1: \e[1m\e[32m[OK!]\e[0m"
}

fail() {
  echo -e "\e[31m==================================\e[0m"
  echo -e "\e[31mFATAL ERROR with $1\e[0m"
  echo -e "\e[31m==================================\e[0m"
}

release=$(lsb_release -r | grep "Release:" | cut -d: -f2 | xargs)

echo "Inizio fare di controllo..."
echo ""

if [[ "$release" = "18.04" ]]; then
  good "Release di ubuntu corretta"
else
  fail "Problemi con la relase di ubuntu ($release) necessaria la 18.04"
fi

if [[ "$release" = "19.04" ]]; then
  good "Release di ubuntu corretta"
else
  fail "Problemi con la relase di ubuntu necessaria la 18.04"
fi
