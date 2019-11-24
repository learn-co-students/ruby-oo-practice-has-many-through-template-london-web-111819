#class for Model2 goes here
#Feel free to change the name of the class
class Like
    attr_reader :user, :tweet

    @@all = []

    def initialize(user, tweet)
        @user = user
        @tweet = tweet
        @@all.push(self)
    end

    def self.all
        @@all
    end
end
