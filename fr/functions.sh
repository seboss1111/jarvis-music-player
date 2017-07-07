#!/usr/bin/env bash

jv_pg_mp_lang() {
  case "$1" in
    invalid_path) echo "Path $2 is invalid.";;
    no_current_music) echo "There is no selected music.";;
    current_music_is) echo "Current music is $2.";;
    no_music_in_the_playlist) echo "There is no music in the playlist.";;
    nb_of_music_is) echo "There is $2 music in the playlist.";;
    invalid_playlist_time) echo "Playlist time $2 is in invalid format.";;
    playlist_time_is) echo "Playlist time is $2 minutes.";;

    *) jv_error "Error: Translation key '$1' not recognized. Please contact the designer of this plugin.";;
  esac
}
