#!/bin/bash

CHECK=(`xdotool search --name "konsole-scratchpad"`)
RECHECK=(`wmctrl -l | grep konsole-scratchpad`)

altern_scratch() {

       if [ "$RECHECK" == "" ]; then

	   xdotool search --name "konsole-scratchpad" windowmap

       else

	   xdotool search --name "konsole-scratchpad" windowunmap

       fi

}


if [ "$CHECK" == "" ]; then

    konsole -T konsole-scratchpad -c scratchpad -g 100x30

 else

     $(altern_scratch)

     fi


