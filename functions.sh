#!/usr/bin/env bash

jv_pg_mp_play_music()
{
  say "$(jv_pg_mp_lang play_music)"
  xmms2 play
}

jv_pg_mp_stop_music()
{
  say "$(jv_pg_mp_lang stop_music)"
  xmms2 stop
}

jv_pg_mp_next_music()
{
  say "$(jv_pg_mp_lang next_song)"
  xmms2 next
}

jv_pg_mp_prev_music()
{
  say "$(jv_pg_mp_lang previous_song)"
  xmms2 prev
}

jv_pg_mp_update_music()
{
  say "$(jv_pg_mp_lang update_playlist)"
  xmms2 playlist clear
  xmms2 add $var_jv_pg_mp_music_directory
}

jv_pg_mp_shuffle_playlist()
{
  say "$(jv_pg_mp_lang shuffle_playlist)"
  xmms2 playlist clear
  xmms2 add $var_jv_pg_mp_music_directory
  xmms2 playlist shuffle
}
