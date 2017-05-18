#!/usr/bin/env bash

# Update/Initialize the playlist
#
# return (int): 0 if success, 1 if failed
jv_pg_mp_update_music()
{
  if [ -d "$var_jv_pg_mp_music_directory" ] ; then
    xmms2 playlist clear
    xmms2 add $var_jv_pg_mp_music_directory
  else
    jv_error "$(jv_pg_mp_lang invalid_path "$var_jv_pg_mp_music_directory")"
    return 1
  fi
}

# Shuffle the current playlist
jv_pg_mp_shuffle_playlist()
{
  xmms2 playlist shuffle
}

# Launch the music
jv_pg_mp_play_music()
{
  xmms2 play
}

# Stop the music
jv_pg_mp_stop_music()
{
  xmms2 stop
}

# Pause the music
jv_pg_mp_pause_music()
{
  xmms2 pause
}

# Select the next music of the playlist
jv_pg_mp_next_music()
{
  xmms2 next
}

# Select the previous music of the playlist
jv_pg_mp_prev_music()
{
  xmms2 prev
}

# Go to a specific music of the playlist
# $1 (string): (Part of the) name of the music to select
#
# return (int): 0 if success, 1 if failed
jv_pg_mp_go_to_specific_music()
{
  music_number=`xmms2 list | grep -i "$1" | head -n 1 | tail -n 1 | sed -re 's@.+\[(.+)/.+\] (.+)@\1@'`

  # Be sure a music is found
  reg="^[0-9]+$"
  if ! [[ $music_number =~ $reg ]] ; then
     return 1
  fi

  xmms2 jump "$music_number"
}

# Set the volume
# $1 (int): Volume percentage (0 to 100)
#
# return (int): 0 if success, 1 if failed
jv_pg_mp_set_volume()
{
  if [[ "$1" -lt 0 || "$1" -gt 100 ]]; then
    say "$(jv_pg_mp_lang invalid_volume "$1")"
    return 1
  fi

  xmms2 server volume "$1"
}
