class CommentsController < ApplicationController
    def create
        # find the post by id
        @post = Post.find(params[:post_id])
            #create a new commnet from the params given
        @comment = @post.comments.create(comment_params)
        flash[:notice] = "Comment has been created"
        redirect_to post_path(@post)
    end

    def destroy
        # find the post by id
        @post = Post.find(params[:post_id])
        #find the comment by the given id
        @comment = @post.comments.find(params[:id])
        #delete
        @comment.destroy
        flash[:notice] = "Comment has been deleted"
        #return to the given path
        redirect_to post_path(@post)
    end

    private
    # allow parameters to be passed
    def comment_params
        params.require(:comment).permit(:name, :body)
    end
end
