#!/usr/bin/env bash

jv_pg_mp_lang() {
  case "$1" in
    invalid_path) echo "Path $2 is invalid.";;

    *) jv_error "Error: Translation key '$1' not recognized. Please contact the designer of this plugin.";;
  esac
}
