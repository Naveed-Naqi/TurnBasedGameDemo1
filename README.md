# TurnBasedGameDemo1

- “Odd-r” horizontal layout shoves odd rows right
- Converts global coordinates to grid based coordinates for the player target and player position
- Player target is obtained through a mouse click
- Player character can move left and right on a hex grid based on where the player has clicked


Known Bugs
- Clicking on the right of a hex tile will cause the player character to move to the next adjacent hex tile. This happens because of the way that our coordinates system underlying the hexes has been set up. Fixes to this problem will need to be explored down the line. 
