get '/' do
  redirect '/wizards'
end

get '/wizards' do
  # call all wizards
  @wizards = Wizard.all
  # render index
  erb :'wizards/index'
end

get '/wizards/new' do
  #render new wizard form
  erb :'wizards/new'
end

post '/wizards' do
  #create new instance of wizard
  @wizards = Wizard.new(params[:wizard])
  #save new wizard
  if @wizards.save
  #redirect to home page
    redirect '/'
  else
    status 422
    @errors = @wizards.errors.full_messages
    erb :'wizards/new'
  end
end

############################################
##############login and logout##############
############################################

get '/wizards/login' do
  erb :'wizards/login'
end

post '/wizards/login' do
  wizard = Wizard.authenticate(params[:wizard][:email], params[:wizard][:password])
  if wizard
    session[:wizard_id] = wizard.id
    redirect '/wizards/profile'
  else
    status 422
    @errors = ['Login Failed']
    erb :'wizards/login'
  end
end

delete "/wizards/logout" do
  session[:wizard_id] = nil
  redirect '/wizards/login'
end

############################################

get '/wizards/:id' do
  #find wizard by id
  #render show page
end

get '/wizards/:id/edit' do
  #find wizard by id
  #render edit page
end

patch '/wizards/:id' do
  #find wizard by id
  #update selected wizard
  #redirect to show page
end

delete '/wizards/:id' do
  #find wizard by id
  #delete selected wizard
  #redirect to home page
end


