#!/bin/sh
VERSION=$(sed '/FROM ghcr.io\/linkwarden\/linkwarden:/!d' Dockerfile | cut -d'v' -f2)
echo "$VERSION"
