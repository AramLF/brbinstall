#!/bin/bash

brbinstall_theming_kitty_set-flue () {
echo -ne "
==============================================================================
kitty flue theme installation
==============================================================================
"
brbinstall_setup_kitty_auto-theming-term 2C2C2C CC0000 4E9A06 C4A000 3565A4 75507B 06989A D3D7CF 555753 EF2929 8AE234 FCE94F 729FCF AD7FA8 34E2E2 EEEEEC 2C2C2C EEEEEC
}

brbinstall_theming_kitty_set-ende () {
echo -ne "
==============================================================================
kitty ende theme installation
==============================================================================
"
brbinstall_setup_kitty_auto-theming-term 08052B FF7F7F 47B35D CC3980 7FBAFF 7F3FBF 7F7FFF CDCCDB 7FBAFF FF7F7F 9999CC FF7F7F 7F7FFF 7F3FBF 7F7FFF E3E3EA 08052B E3E3EA
}

brbinstall_theming_kitty_set-catppuccin () {
echo -ne "
==============================================================================
kitty catppuccin theme installation
==============================================================================
"
brbinstall_setup_kitty_auto-theming-term 6E6C7C F28FAD ABE9B3 FAE3B0 96CDFB DDB6F2 F5C2E7 D9E0EE 988BA2 F28FAD ABE9B3 FAE3B0 96CDFB DDB6F2 F5C2E7 D9E0EE 1E1E2E D9E0EE
}

brbinstall_theming_kitty_set-spice () {
echo -ne "
==============================================================================
kitty spice theme installation
==============================================================================
"
#EBD8DF #EEDEE4
brbinstall_setup_kitty_auto-theming-term 262626 C84440 7E9942 C4814B 6A90A1 947C9C 6F9993 CABDC2 454040 F0544C 98AE66 D89C6A 92B0BD B294BB 8ABEB7 EBD8DF 262626 EBD8DF
}

brbinstall_theming_kitty_set-vimi () {
echo -ne "
==============================================================================
kitty vimi theme installation
==============================================================================
"
brbinstall_setup_kitty_auto-theming-term 363636 FF5370 C3E88d FFCB6B 82AAFF C792EA 89DDFF FCFCFC 363636 FF5370 C3E88D FFCB6B 82AAFF C792EA 89DDFF FCFCFC 363636 FCFCFC
}

brbinstall_setup_kitty_auto-theming-highlight () {
echo -ne "
==============================================================================
kitty highlight theming
==============================================================================
"
brbinstall_setup_kitty_auto-theming-term "none" "none" "none" "background"
}
