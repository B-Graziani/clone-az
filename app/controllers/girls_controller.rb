class GirlsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]
    def index
        @girls = Girl.all
        @user = current_user
    end
    def show
        @girl = Girl.find(params[:id])
    end

    def new
        @girl = Girl.new
    end

    def create
        
        @girl = Girl.new(girl_params)
        @girl.user = current_user
        @girl.save
        redirect_to girl_path(@girl)
    end

    def edit
        @girl = Girl.find(params[:id])
    end

    def update
        @girl = Girl.find(params[:id])
        @girl.update(girl_params)
        redirect_to girl_path(@girl)
    end

    def destroy
        @girl = Girl.find(params[:id])
        @girl.destroy
        redirect_to root_path
    end

    private

    def girl_params
        params.require(:girl).permit(:name, :address, :content, :photo)
    end
end
