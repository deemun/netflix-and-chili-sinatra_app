# Homepage (Root path)
get '/' do
  erb :index
end


get '/events' do
	
	@events = Event.all  #Active record object being transferred into a variable.
	erb :'events/index'
end

get '/events/new' do
  erb :'/events/new'
end

post '/events' do  #accepting the form data and updating the messages table in db
	@event = Event.new(
		title: params[:title], #params title comes from form. title on left is DB
		address: params[:address],
		capacity: params[:capacity],
		description: params[:description],
		price: params[:price],
		event_date: params[:event_date],
		image_file: params[:image_file]
	)
	if @events.save
		redirect '/events'
	else
		erb :'events/new'
	end
end

