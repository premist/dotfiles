#!/usr/bin/env zsh

if [ -z $GOOGLE_CLOUD_SDK_DIR ]; then
	export GOOGLE_CLOUD_SDK_DIR=/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk
fi

if [ -s "$GOOGLE_CLOUD_SDK_DIR/path.zsh.inc" ]; then
	source "$GOOGLE_CLOUD_SDK_DIR/path.zsh.inc"
fi

if [ -s "$GOOGLE_CLOUD_SDK_DIR/completion.zsh.inc" ]; then
	source "$GOOGLE_CLOUD_SDK_DIR/completion.zsh.inc"
fi
