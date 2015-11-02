#!/bin/sh
API_KEY={{ salt['pillar.get']('ssh2hipchat:hipchat-api-key') }}
ROOM={{ salt['pillar.get']('ssh2hipchat:room') }}
SENDER={{ salt['pillar.get']('ssh2hipchat:sender') }}

if [ "$PAM_TYPE" != "close_session" ]; then
    curl -d "room_id=$ROOM&from=$SENDER&message=(sadpanda) $PAM_USER has logged in to `hostname`&color=red" https://api.hipchat.com/v1/rooms/message?auth_token=$API_KEY&format=json
fi

