class ContentsController < ApplicationController
    
    def index
        @contents = Content.all
        render json: @contents
    end

    def show
        @content = Content.find(params[:id])
        render json: @content
    end

    def new
        @content = Content.new
        render json: @content
    end

    def create
        @content = Content.create(content_params)
        render json: @content
    end

    def edit
        @content = Content.find(params[:id])
        render json: @content
    end

    def update
        @content = Content.find(params[:id])
        @content.update(content_params)
        render json: @content
    end

    def destroy
        @content = Content.find(params[:id]).destroy 
        render json: {}
    end

    private 
    
    def content_params
        params.require(:content).permit(:genre, :type, :poster_img, :wideposter_img, :video, :likes, :dislikes, :favorited)
    end

end
