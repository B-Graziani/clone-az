class GirlsController < ApplicationController
    def index
        @girls = Girl.all
    end

    def new
        @girl = Girl.new
    end

    def create
        @girl = Girl.new(girl_params)
        @girl.save
        redirect_to root_path
    end

    private

    def girl_params
        params.require(:girl).permit(:name, :address, :content)
    end
end
