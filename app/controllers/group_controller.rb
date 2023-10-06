class GroupController < ApplicationController
    before_action :authenticate_user!
    def new
        @group = Group.new
        @icon_options = [
          "fas fa-home",
          "fas fa-heart",
          "fas fa-globe",
          "fas fa-user",
          "fas fa-envelope",
          "fas fa-camera",
          "fas fa-shopping-cart",
          "fas fa-briefcase",
          "fas fa-cog",
          "fas fa-check-circle"
        ]
    end
    def index
        @groups = Group.all
      end
    def create
        @group = Group.new(category_params)
    
        if @group.save
          puts "=============================================="
          puts "IT WAS SAVED"
          puts "=============================================="
          redirect_to root_path, notice: 'Category was successfully created.'
        else
          # render :new
          puts @group.errors.full_messages
          puts "=============================================="
          puts "NOT SAVED"
          puts "=============================================="
        end
      end
    
      private
    
      def category_params
        params.require(:group).permit(:name, :icon, :user_id)
      end
end
