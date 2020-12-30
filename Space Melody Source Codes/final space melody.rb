use_bpm 90

# Loops throughout.
live_loop :env do
  4.times do
    sample :bass_trance_c, amp: 0.25, attack: 3, attack_level: 2.5
    sleep 1
  end
  sample :ambi_piano, amp: 2, attack: 3, attack_level: 1
  sleep 1
  #kill env
end

sleep 48
in_thread do
  
  # Theatric Boom.
  3.times do
    sample :bass_thick_c
    sleep 14
  end
  sleep 14
  
  # Piano notes.
  6.times do
    use_synth :piano
    3.times do
      play :D3, amp: 2, attack: 3, attack_level: 2
      sleep 1
    end
    2.times do
      play :E3, amp: 2, attack: 3, attack_level: 2
      sleep 1
    end
    1.times do
      play :F3, amp: 2, attack: 3, attack_level: 2
      sleep 1
    end
    4.times do
      play :G3, amp: 2, attack: 3, attack_level: 2
      sleep 1
    end
    1.times do
      play :E3, amp: 2, attack: 3, attack_level: 1
      sleep 1
      play :D3, amp: 2, attack: 3, attack_level: 2
      sleep 1
      play :D3, amp: 2, attack: 3, attack_level: 1
      sleep 1
      play :C3, amp: 2, attack: 3, attack_level: 2
      sleep 1
      play :C3, amp: 2, attack: 3, attack_level: 2
      sleep 1
    end
  end
  sleep 28
  
  # Piano notes with boom.
  9.times do
    use_synth :piano
    sample :bass_thick_c
    3.times do
      play :D3, amp: 2, attack: 3, attack_level: 2
      sleep 1
    end
    2.times do
      play :E3, amp: 2, attack: 3, attack_level: 2
      sleep 1
    end
    1.times do
      play :F3, amp: 2, attack: 3, attack_level: 2
      sleep 1
    end
    4.times do
      play :G3, amp: 2, attack: 3, attack_level: 2
      sleep 1
    end
    1.times do
      play :E3, amp: 2, attack: 3, attack_level: 1
      sleep 1
      play :D3, amp: 2, attack: 3, attack_level: 2
      sleep 1
      play :D3, amp: 2, attack: 3, attack_level: 1
      sleep 1
      play :C3, amp: 2, attack: 3, attack_level: 2
      sleep 1
      play :C3, amp: 2, attack: 3, attack_level: 2
      sleep 1
    end
  end
  sleep 14
  
  
  # Piano Chords.
  6.times do
    use_synth :piano
    
    with_fx :distortion, distort: 0.25 do
      
      3.times do
        play chord(:D3, :m), amp: 3, attack: 3, attack_level: 3, sustain: 6
        sleep 1
      end
      2.times do
        play chord(:E3, :m), amp: 3, attack: 3, attack_level: 3,  release: 6
        sleep 1
      end
      1.times do
        play chord(:F3, :major), amp: 3, attack: 3, attack_level: 3, release: 6
        sleep 1
      end
      4.times do
        play chord(:G3, :major), amp: 3, attack: 3, attack_level: 3, release: 6
        sleep 1
      end
      1.times do
        play chord(:E3, :m), amp: 3, attack: 3, attack_level: 3, release: 6
        sleep 1
        play chord(:D3, :m), amp: 3, attack: 3, attack_level: 3, release: 6
        sleep 1
        play chord(:D3, :m), amp: 3, attack: 3, attack_level: 3, release: 6
        sleep 1
        play chord(:C3, :major), amp: 3, attack: 3, attack_level: 3, release: 6
        sleep 1
        play chord(:C3, :major), amp: 3, attack: 3, attack_level: 3, release: 6
        sleep 1
      end
    end
  end
  
  # Glitch after end of chord.
  sample :glitch_bass_g, sustain: 12, release: 12
end

# in the final loop, end the boom with a release of more than
# 10.

# at the end, we stop this and play another program,
# "space melody outro".
  