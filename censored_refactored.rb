test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living with such a bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

test_tweets.each do |phrase|

  banned_phrases.each do |bad_word|
    if phrase.include?(bad_word)
      phrase[bad_word] = "CENSORED"
  end
end

puts test_tweets
