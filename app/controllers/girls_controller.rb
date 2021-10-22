class GirlsController < ApplicationController
    skip_before_action :authenticate_user!, only: :index
    def index
        @girls = Girl.all
        @user = current_user
    end

    def new
        @girl = Girl.new
    end

    def create
        
        @girl = Girl.new(girl_params)
        @girl.user = current_user
        @girl.save
        redirect_to root_path
    end

    private

    def girl_params
        params.require(:girl).permit(:name, :address, :content)
    end
end
