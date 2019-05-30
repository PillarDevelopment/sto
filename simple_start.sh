#!/usr/bin/env bash

sudo docker login

sudo docker pull miohtama/sto

sudo docker run miohtama/sto

alias sto='docker run -p 8545:8545 -v `pwd`:`pwd` -w `pwd` miohtama/sto:latest'

bash <(curl https://get.parity.io -L)

parity

# Scan Maker DAO

sto token-scan --token-address=0x9f8f72aa9304c8b593d555f12ef6589cc3a579a2
