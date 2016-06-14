get '/' do
  redirect '/wizards'
end

get '/wizards' do
  # call all wizards
  # render index
end

get '/wizards/new' do
  #render new wizard form
end

post '/wizards' do
  #create new instance of wizard
  #save new wizard
  #redirect to home page
end

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
