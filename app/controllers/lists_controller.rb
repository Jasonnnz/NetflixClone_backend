class ListsController < ApplicationController

    def index
        @lists = List.all
        render json: @lists
    end

    def show
        @list = List.find(params[:id])
        render json: @list
    end

    def new
        @list = List.new
        render json: @list
    end

    def create
        @list = List.create(list_params)
        render json: @list
    end

    def edit
        @list = List.find(params[:id])
        render json: @list
    end

    def update
        @list = List.find(params[:id])
        @list.update(list_params)
        render json: @list
    end

    def destroy
        @list = List.find(params[:id]).destroy 
        render json: {}
    end

    private 
    
    def list_params
        params.require(:list).permit(:user_id, :list_id, :genre)
    end

end
