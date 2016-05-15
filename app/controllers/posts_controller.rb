class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy]
    def index
        @posts = Post.all.order("created_at DESC")
    end
    # make a new post
    def new
        @post = Post.new
    end

    def create
        # make a new post based on the given paramters
        @post = Post.new(post_params)
        # if we saved corrently, flash message and go to page
        if  @post.save
            flash[:notice] = "Post successfully created"
            redirect_to post_path(@post)
        else
            render :new
        end

    end

    def show
    end

    def edit
    end

    def destroy
        @post.destroy
        flash[:notice] = "Post successfully deleted :*("

        redirect_to posts_path
    end

    def update
        if @post.update(post_params)
        flash[:notice] = "Post successfully updated"

        redirect_to post_path@post
    else
        render :edit
        end

    end

    private
    # DRY finding post
    def find_post
        @post = Post.find(params[:id])
    end
    #allow parameters to be passed
    def post_params
        params.require(:post).permit(:title, :body)
    end
end
