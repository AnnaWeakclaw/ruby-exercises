test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living with such a bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]
accumulator = []
accum_phrases = []
acc_final = []

test_tweets.each do |phrase|
phraseBrokenDown = phrase.split

  phraseBrokenDown.each do |word|

if word.include?("!")
  just_word = word.delete("!")
end
    banned_phrases.each do |compare|
      if word == compare
        word = "CENSORED"
      elsif just_word == compare
        word = 'CENSORED' +"!"
      end
    end
accumulator.push(word)
  end
acc_final.push(accumulator.join(" "))
accumulator = []
end


acc_final.each do |phrase|
  if phrase.include?("danger to society")
  phrase["danger to society"] = "CENSORED"
end
end

puts acc_final
