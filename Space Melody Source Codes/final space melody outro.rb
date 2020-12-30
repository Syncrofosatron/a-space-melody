# outro with space melody.
use_bpm 90
1.times do
  play :D5, amp: 0.25, attack: 2, attack_level: 1, sustain: 4
  sleep 6
  play :E5, amp: 0.25, attack: 2, attack_level: 1, sustain: 4
  sleep 4
  play :F5, amp: 0.25, attack: 2, attack_level: 1, sustain: 2
  sleep 4
  play :G5, amp: 0.25, attack: 2, attack_level: 1, sustain: 3
  sleep 6
  play :E5, amp: 0.25, attack: 2, attack_level: 1, sustain: 3
  sleep 4
  play :D5, amp: 0.25, attack: 2, attack_level: 1, sustain: 2
  sleep 4
  play :C5, amp: 0.25, attack: 2, attack_level: 1, release: 9
  sleep 4
end