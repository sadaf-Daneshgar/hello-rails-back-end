class GreetingsController < ApplicationController
    def random 
      random_message = Message.order("RANDOM()").first
      render json: { greeting: random_message&.content || "No greetings available" }
  end
end
