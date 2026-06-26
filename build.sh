#!/bin/bash
set -e
curl -L https://go.dev/dl/go1.22.0.linux-amd64.tar.gz -o go.tar.gz
tar -xzf go.tar.gz
export PATH=$PATH:$(pwd)/go/bin
curl -L https://github.com/gohugoio/hugo/releases/download/v0.147.9/hugo_extended_0.147.9_linux-amd64.tar.gz -o hugo.tar.gz
tar -xzf hugo.tar.gz
npm install
PATH=$PATH:$(pwd)/go/bin ./hugo --minify
