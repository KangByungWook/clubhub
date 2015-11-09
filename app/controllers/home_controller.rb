class HomeController < ApplicationController
before_action :authenticate_user!, only: [:index, :index_write]
    
    def index
        @boardModel = Parse::Query.new("Board")
        @commentModel = Parse::Query.new("Comment")
    end
    
    def do_reply
       createRow = Parse::Object.new("Comment")
       createRow["text"] = params[:replyContent]
       createRow["commenter"] = "익명"
       createRow["boardID"] = params[:boardID]
       createRow.save
       redirect_to :back,  notice: "댓글이 등록되었습니다."
    end
    
    def write_page
        
    end
    def index_write
       a=Article.new
       a.author=current_user.name
       a.title=params[:title]
       a.content=params[:content]
       a.save
       redirect_to :back
    end
    
    def gallery
        @photoModel = Parse::Query.new("Photo")
    end
    
    def swipertest
        render layout: false
    end
end

