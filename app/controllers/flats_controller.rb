require "open-uri"

class FlatsController < ApplicationController
    URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json".freeze
    before_action :set_flats

    def index
    end

    def show
        id_to_search = params[:id].to_i
        @flat = @flats.find { |flat| flat["id"] == id_to_search }
    end

    private 

    def set_flats
        @flats = JSON.parse(URI.open(URL).read)
    end
end
