class CommentsController < ApplicationController
    protect_from_forgery except: :create
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comment.create(comment_params)
        redirect_to  article_path(@article)
    end

    private 
    def comment_params
        params.require(:comment).permit(:comment,:body)
    end
    
end
