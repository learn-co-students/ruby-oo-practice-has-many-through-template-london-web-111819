#class for Model1 goes here
#Feel free to change the name of the class
class User
    attr_reader :username

    @@all = []

    def initialize(username)
        @username = username
        @@all.push(self)
    end

    def post_tweet(message)
        Tweet.new(self, message)
    end

    def get_all_my_tweets
        Tweet.all.select {|tweet| tweet.user == self}
    end

    def like_tweet(tweet)
        Like.new(self, tweet)
    end

    def self.all
        @@all
    end
end
