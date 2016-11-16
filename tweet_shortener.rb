require 'pry'
# Write your code here.
def dictionary(word)
  dict = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }

  return dict[word.downcase] if dict.keys.include?(word.downcase)
  word
end

# puts dictionary("and")
# puts dictionary("this")
# puts dictionary("too")
def word_substituter(string)
  shortened = []
  string.split.each { |word| shortened << dictionary(word) }
  shortened.join(" ")
end

def bulk_tweet_shortener(array_tweets)
  array_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.chars.count > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(short_tweet)
  short_tweet.chars.count > 140 ? short_tweet[0..136] + "..." : short_tweet
end
