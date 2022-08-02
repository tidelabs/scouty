#!/bin/bash
#
# > make a file executable
# chmod +x ./_init.sh
#
# > positional arguments:
# 1st - Stash
# 2nd - Identity
# 3rd - Queued session keys (0x..)
# 4th - Is active? (true/false)
# 5th - Session keys queued? (true/false)
# 6th - Era
# 7th - Session
# 8th - Eras session index [1,2,3,4,5,6]
# 9th - Current block
#
# The following arguments depend on exposed flags
# 10th - Network name (--expose-network flag must be set)
# 11th - Network token symbol (--expose-network flag must be set)
# 12th - Network token decimals (--expose-network flag must be set)

# 13th - Projected APR (same calculation as in polkadot.js) (--expose-nominators flag must be set)
# 14th - Validator Total stake (--expose-nominators flag must be set)
# 15th - Validator Own stake (--expose-nominators flag must be set)
# 16th - Active Nominators stashes [stash_1, stash_2, ..] (--expose-nominators flag must be set)
# 17th - Active Nominators stakes [stake_1, stake_2, ..] (--expose-nominators flag must be set)
#
# 18th - Number of Authored blocks (Session - 1) (--expose-authored-blocks flag must be set)
# 19th - Not applicable
#
# 20th - All Nominators stashes [stash_1, stash_2, ..] (--expose-all-nominators flag must be set)
# 21th - Total nominators stake and Raw distribution stake per nominee [total_nominators_stake, raw_distribution_stake] (--expose-all-nominators flag must be set)
#
# 22th - Is Para validator? (true/false) (--expose-para-validator flag must be set)
# 23th - Number of Para validator times in previous 6 Sessions (--expose-para-validator flag must be set)
#
# 24th - Last era validator points (--expose-era-points flag must be set)
# 25th - Last era validators average points (--expose-era-points flag must be set)
#
# > Special character '!' controls message visibility on Matrix (Element)
# Any message that starts with '!' will be sent to Matrix, to the user private room
# 
# echo "! This message will be sent to Matrix"
# echo "This message will NOT be sent to Matrix"
# 
# ***** START *****
#
echo "! e.g. Write your own script here"
echo "! --------------------------------"
echo "! Positional arguments:"
echo "! 1st - Stash -> $1" 
echo "! 2nd - Identity -> $2"
echo "! 3rd - Queued session keys -> ${3:0:16}.."
echo "! 4th - Is active? -> $4"
echo "! 5th - Session keys queued? -> $5"
echo "! 6th - Era -> $6"
echo "! 7th - Session -> $7"
echo "! 8th - Eras session index -> $8"
echo "! 9th - Current block -> $9"
echo "! (10th) - Network name -> ${10}"
echo "! (11th) - Network token symbol -> ${11}"
echo "! (12th) - Network token decimals -> ${12}"
echo "! (13th) - Validator total stake -> ${13}"
echo "! (14th) - Validator own stake -> ${14}"
echo "! (15th) - Active Nominators -> ${15}"
echo "! (16th) - Active Nominators Stake -> ${16}"
echo "! (17th) - Number of Authored blocks in current Session -> ${17}"
echo "! (18th) - NA"
echo "! (19th) - All Nominators -> ${19}"
echo "! -------------------------------"
if [ "$4" = "true" ]
then
  echo "! 🟢 -> 😎"
else
  echo "! 🔴 -> 😤"
fi
#
# ***** END *****

