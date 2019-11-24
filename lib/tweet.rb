#class for Model3 goes here
#Feel free to change the name of the class
class Tweet
    attr_reader :user, :message

    @@all = []

    def initialize(user, message)
        @user = user
        @messafe = message
        @@all.push(self)
    end

    def self.all
        @@all
    end
end