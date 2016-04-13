#!/bin/bash

jack-plumber \
    --rename-port 'system' 'capture_1' 'capture-1' \
    --rename-port 'system' 'capture_2' 'capture-2' \
    --rename-port 'system' 'playback_1' 'speakers-left' \
    --rename-port 'system' 'playback_2' 'speakers-right' \
    --rename-port 'system' 'playback_3' 'headphones-left' \
    --rename-port 'system' 'playback_4' 'headphones-right' \
    --rename-port 'a2j' 'Midi Through.*playback' 'midi-through/midi-in' \
    --rename-port 'a2j' 'Midi Through.*capture' 'midi-through/midi-out' \
    --rename-port 'a2j' 'USB-MIDI.*playback' 'kawai-vpc1/midi-in' \
    --rename-port 'a2j' 'USB-MIDI.*capture' 'kawai-vpc1/midi-out' \
    --rename-port 'a2j' 'Scarlett 2i4 USB.*playback' 'scarlett-2i4/midi-in' \
    --rename-port 'a2j' 'Scarlett 2i4 USB.*capture' 'scarlett-2i4/midi-out' \
    --rename-port 'a2j' 'Launchpad Mini 9.*playback' 'launchpad-mini-9/midi-in' \
    --rename-port 'a2j' 'Launchpad Mini 9.*capture' 'launchpad-mini-9/midi-out' \
    --connect-ports 'a2j' 'kawai-vpc./midi-out' 'a2j' 'scarlett-.*/midi-in' \
    --connect-ports 'a2j' 'scarlett-.*/midi-in' 'a2j' 'scarlett-.*/midi-out' \
    --execute-command 'a2j' '.*kawai.*' renamed 'echo renamed kawai'
