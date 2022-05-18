#!/usr/bin/env bash

./alpine-chroot-install

/alpine/enter-chroot

export CI_COMMIT_SHA="${GITHUB_SHA}"
export CI_COMMIT_REF_NAME="${GITHUB_REF}"

release.sh