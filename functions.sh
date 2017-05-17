#!/usr/bin/env bash

jv_pg_mp_play_music()
{
  xmms2 play
}

jv_pg_mp_stop_music()
{
  xmms2 stop
}

jv_pg_mp_pause_music()
{
  xmms2 pause
}

jv_pg_mp_next_music()
{
  xmms2 next
}

jv_pg_mp_prev_music()
{
  xmms2 prev
}

jv_pg_mp_update_music()
{
  xmms2 playlist clear
  xmms2 add $var_jv_pg_mp_music_directory
}

jv_pg_mp_shuffle_playlist()
{
  xmms2 playlist clear
  xmms2 add $var_jv_pg_mp_music_directory
  xmms2 playlist shuffle
}
