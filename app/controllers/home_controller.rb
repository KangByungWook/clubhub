class HomeController < ApplicationController
before_action :authenticate_user!, only: [:index, :index_write]
    
    def index
        @contents=Article.all.reverse
        
    end
    
    def index_write
       a=Article.new
       a.author=current_user.name
       a.title=params[:title]
       a.content=params[:content]
       a.save
       redirect_to :back
    end
end
