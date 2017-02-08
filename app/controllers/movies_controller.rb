class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
  end

  def show
    m = Movie.find(params[:id])
    @title = m.title
    @id = m.id
    @year = m.year
    @duration = m.duration
    @description = m.description
    @image_url = m.image_url
    render("show.html.erb")
  end

  def new_form

    render("movies/new_form.html.erb")
  end

  def edit_form
    m = Movie.find(params[:id])
    @title = m.title
    @id = m.id
    @year = m.year
    @duration = m.duration
    @desciption = m.description
    @image_url = m.image_url
    render("movies/edit_form.html.erb")
  end

  def update_row
    m = Movie.find(params[:id])
    @id = m.id

    @title = params[:the_title]
    @year = params[:the_year]
    @duration = params[:the_duration]
    @description = params[:the_description]
    @image_url = params[:the_image_url]
    m.title = @title
    m.year = @year
    m.duration = @duration
    m.description = @description
    m.image_url = @image_url
    m.save
    redirect_to("http://localhost:3000/movies/" + @id.to_s)
  end

  def destroy
    m = Movie.find(params[:id])
    @id = m.id
    m.destroy
    redirect_to("http://localhost:3000/movies")
  end

  def create_row
    m = Movie.new
    @title = params[:the_title]
    @year = params[:the_year]
    @duration = params[:the_duration]
    @description = params[:the_description]
    @image_url = params[:the_image_url]
    @id = m.id
    m.title = @title
    m.year = @year
    m.duration = @duration
    m.description = @description
    m.image_url = @image_url
    m.save
    redirect_to("http://localhost:3000/movies")
  end
end
