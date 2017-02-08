class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
  end

  def show
    m = Actor.find(params[:id])
    @name = m.name
    @id = m.id
    @bio = m.bio
    @dob = m.dob
    @image_url = m.image_url
    render("show.html.erb")
  end

  def new_form

    render("actors/new_form.html.erb")
  end

  def edit_form
    m = Actor.find(params[:id])
    @name = m.name
    @id = m.id
    @bio = m.bio
    @dob = m.dob
    @image_url = m.image_url
    render("actors/edit_form.html.erb")
  end

  def update_row
    m = Actor.find(params[:id])
    @id = m.id

    @name = params[:the_name]
    @bio = params[:the_bio]
    @dob = params[:the_dob]
    @image_url = params[:the_image_url]
    m.name = @name
    m.bio = @bio
    m.dob = @dob
    m.image_url = @image_url
    m.save
    redirect_to("http://localhost:3000/actors/" + @id.to_s)
  end

  def destroy
    m = Actor.find(params[:id])
    @id = m.id
    m.destroy
    redirect_to("http://localhost:3000/actors")
  end

  def create_row
    m = Actor.new
    @name = params[:the_name]
    @bio = params[:the_bio]
    @dob = params[:the_dob]
    @image_url = params[:the_image_url]
    @id = m.id
    m.name = @name
    m.bio = @bio
    m.dob = @dob
    m.image_url = @image_url
    m.save
    redirect_to("http://localhost:3000/actors")
  end
end
