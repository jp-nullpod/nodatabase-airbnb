require "open-uri"

class FlatsController < ApplicationController
    URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json".freeze

    def index
        @flats = JSON.parse(URI.open(URL).read)
    end

    def show
        @flats = JSON.parse(URI.open(URL).read)
        id_to_search = params[:id].to_i

        @flat = @flats.find { |flat| flat["id"] == id_to_search }
    end
end
