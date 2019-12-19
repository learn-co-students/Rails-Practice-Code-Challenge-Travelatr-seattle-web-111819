class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update]

    def show
        
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to post_path(@post)
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @post.update(post_params)
            @post.save
            redirect_to post_path(@post)
        else 
            render :edit 
        end 
    end 


    private

    def find_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    end


end 