#!/usr/bin/env bash

jv_pg_mp_lang() {
  case "$1" in
    play_music) echo "Playing music.";;
    stop_music) echo "Stopping music.";;
    next_song) echo "Next song.";;
    previous_song) echo "Previous song.";;
    update_playlist) echo "Playlist updated.";;
    shuffle_playlist) echo "Playlist shuffled.";;

    *) jv_error "Error: Translation key '$1' not recognized. Please contact the designer of this plugin.";;
  esac
}
