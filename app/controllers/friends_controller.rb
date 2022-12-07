class FriendsController < ApplicationController

    def index     
        friends = Friend.all
        render json: friends 
    end

    def show
        friend = Friend.find(params[:id])
        render json: friend
      rescue ActiveRecord::RecordNotFound
        render json: "Friend not found", status: :not_found
      end
    
end
