#!/bin/sh

VERSION=$(sed '/FROM ghcr.io\/linkwarden\/linkwarden:/!d' Dockerfile | cut -d':' -f2)
echo "$VERSION"
