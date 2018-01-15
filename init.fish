function __potus_dirname
  echo (dirname (status --current-filename))
end

function __potus_murica -d 'AMERICA, FUCK YEAH'
  for a in $argv
    set -l len (string length $a)
    for i in (seq $len)
      echo -en (set_color (random choice red white blue))(string sub -s $i -l 1 "$a")(set_color normal)
    end
  end
  echo
end

function __potus_mensa_iq_tweet -d 'Respond appropriately to a given exit code'
  set -l code $argv[1]
  set -l __potus_positive_responses \
    'Until I was President, 95% of commands you ran failed. I am about\nRESULTS!' \
    'Another GREAT exit code! MAKE AMERICA GREAT AGAIN!' \
    'Since taking office I have been very strict on shell commands. Good \nnews - it was just reported that your command exited with a ZERO!' \
    'Big win today in this shell, got an exit code of ZERO!' \
    'The Republicans never discuss how good your shell command is,\n& it will get even better at lunchtime. The Dems scream death\nas it returns Zero!' \
    'You know what I say about commands like that! Grab \'em by the\ntail. And when you\'re a star, they let you do it. You can do\nanything!' \
    'Well, that command is over and those that want to MAKE\nAMERICA GREAT AGAIN are 5 and O! All the Fake News, all the\nmoney spent = 0'
  set -l __potus_negative_responses \
    'We were let down by all of the Democrats and a few Republicans.\nWe will return!' \
    'That last command did a good job tonight. It was open,\ntransparent, and innocent. This is the greatest Witch Hunt in\ncomputing history. Sad!' \
    "Wow, CNN had to retract big story on \"command exited with\nstatus code $code,\" with 3 employees forced to resign. FAKE NEWS!" \
    "The Democrats have become nothing but OBSTRUCTIONISTS,\nthey have no policies or ideas. All they do is make our commands\nexit with status code $code and complain." \
    "Hillary Clinton colluded with your command in order to exit\nwith status code $code. Is she allowed to collude? Unfair to your\ncommand!" \
    'It\'s time to send this command back to the shithole country it came\nfrom, and MAKE AMERICA GREAT AGAIN!'
  if [ $code = 0 ]
    echo (random choice $__potus_positive_responses)
  else
    echo (random choice $__potus_negative_responses)
  end
end

function __potus_big_red_button -e fish_postexec
  set -l response (__potus_mensa_iq_tweet $status)
  set -l cmd $argv[1]
  if [ $cmd = 'clear' -o $cmd = '' ]
    return
  end
  echo
  if [ "$potus_the_best_prompt" = 'no' ]
    set -l s (string replace -a \\n ' ' "$response")
    if [ "$potus_the_best_colors" = 'no' ]
      echo "$s"
    else
      __potus_murica "$s"
    end
  else
    convert (__potus_dirname)/trumptweet.png \
      -interline-spacing 10 \
      -gravity West \
      -pointsize 20 \
      -annotate +10+20 \
      "$response" \
      png:- | img2sixel
  end
end
