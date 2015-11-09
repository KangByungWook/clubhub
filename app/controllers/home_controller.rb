class HomeController < ApplicationController
    
    def index
        @boardModel = Parse::Query.new("Board")
        @commentModel = Parse::Query.new("Comment")
    end
    
    def do_write
       createPost = Parse::Object.new("Board")
       createPost["text"] = params[:boardContent]
       createPost["name"] = "익명"
        # #파일 업로드 해보기
        # photo = Parse::File.new({
        #   :body => "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQwLI2OgwM-24Hy8yjx6oba09-aVJqN1BCqDOobKZPPZaFj21J4Eg",
        #   :local_filename => "parsers.jpg",
        #   :content_type => "image/jpeg"
        # })
        # photo.save
        
        # createPost["picture"] = photo
        # #파일 업로드 끝
       redirect_to :back
    end
    
    def do_reply
       createRow = Parse::Object.new("Comment")
       createRow["text"] = params[:replyContent]
       createRow["commenter"] = "익명"
       createRow["boardID"] = params[:boardID]
       createRow.save
       redirect_to :back,  notice: "댓글이 등록되었습니다."
    end
    
    def gallery
        @photoModel = Parse::Query.new("Photo")
    end
    
    def swipertest
        render layout: false
    end
end

