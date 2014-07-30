class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
   def show
     @c = Crud.find_by_id(params['id'])
    render 'show'
   end
  
  def new
  end
  
  def create
    c = Crud.new
    c.title = params['title']
    c.image = params['image']
    c.url = params['url']
    c.save
    redirect_to "/cruds/#{c.id}/edit"
  end
  
  def edit
    @crud =  Crud.find_by_id(params['id'])
  end
  
  def update
    c = Crud.find_by_id(params['id'])
    c.title = params['title']
    c.image = params['image']
    c.url = params['url']
    c.save
    redirect_to "/cruds/#{c.id}"
  end
  
  def destroy
    c = Crud.find_by_id(params['id'])
    c.destroy
    redirect_to '/cruds'
  end 
  
  def index
    @cruds = Crud.all
  end
end
