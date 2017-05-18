#!/usr/bin/env bash

jv_pg_mp_lang() {
  case "$1" in
    invalid_path) echo "Path $2 is invalid.";;
    no_current_music) echo "There is no selected music.";;
    current_music_is) echo "Current music is $2.";;

    *) jv_error "Error: Translation key '$1' not recognized. Please contact the designer of this plugin.";;
  esac
}
