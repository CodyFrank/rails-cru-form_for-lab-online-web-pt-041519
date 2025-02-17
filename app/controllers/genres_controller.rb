class GenresController < ApplicationController

    def index
        @genres = Genre.all
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def create
        @genre = Genre.create(genre_params(:name))
        redirect_to genre_url(@genre)
    end

    def new
        @genre = Genre.new
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.update(genre_params(:name))
        redirect_to genre_url(@genre)
    end

    def destroy
    end
    
    private

    def genre_params(*args)
        params.require(:genre).permit(*args)
    end


end
