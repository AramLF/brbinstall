#!/bin/bash

brbinstall_theming_kitty_set-flue () {
echo -ne "
==============================================================================
kitty flue theme installation
==============================================================================
"
brbinstall_setup_kitty_auto-theming-term 2C2C2C CC0000 4E9A06 C4A000 3565A4 75507B 06989A D3D7CF 555753 EF2929 8AE234 FCE94F 729FCF AD7FA8 34E2E2 EEEEEC 2C2C2C EEEEEC "none" "none" "none" "background"
}

brbinstall_theming_kitty_set-ende () {
echo -ne "
==============================================================================
kitty ende theme installation
==============================================================================
"
brbinstall_setup_kitty_auto-theming-term 08052B FF7F7F 47B35D CC3980 7FBAFF 7F3FBF 7F7FFF CDCCDB 7FBAFF FF7F7F 9999CC FF7F7F 7F7FFF 7F3FBF 7F7FFF E3E3EA 08052B E3E3EA "none" "none" "none" "background"
}

brbinstall_theming_kitty_set-catppuccin () {
echo -ne "
==============================================================================
kitty catppuccin theme installation
==============================================================================
"
brbinstall_setup_kitty_auto-theming-term 6E6C7C F28FAD ABE9B3 FAE3B0 96CDFB DDB6F2 F5C2E7 D9E0EE 988BA2 F28FAD ABE9B3 FAE3B0 96CDFB DDB6F2 F5C2E7 D9E0EE 1E1E2E D9E0EE "none" "none" "none" "background"
}
