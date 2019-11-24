require 'pry'
require_relative "lib/user.rb"
require_relative "lib/tweet.rb"
require_relative "lib/like.rb"

# 1. Define a relationship between a User and a Tweet. The usser has_many tweets whil The
# tweet belongs_to the user.
#     - All the data will be stored in the Tweet class which will be used by the user.

# 2. When we add a feature of Liking, the User will be able to interact with other
# tweets, creating a many_to_many relationship between the tweets and users.
#     - Like class will store information about both users and tweets it relates to.

#USE THIS LAB AS A BIOLERPLATE TO REVISE THE RELATIONSHIPS!


Matthew = User.new('Pwnfish')
Sergey = User.new('Ushi')

tweet1 = Tweet.new(Matthew, 'Matthews first tweet')
tweet2 = Tweet.new(Matthew, 'Matthews second tweet')

tweet3 = Tweet.new(Sergey, 'Sergeys first tweet')
tweet4 = Tweet.new(Sergey, 'Sergeys second tweet')

Matthew.like_tweet(tweet3)

binding.pry
'Done.'
