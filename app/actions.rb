# Homepage (Root path)
get '/' do
  erb :index
end


get '/events' do
	
	@events = events.all  #Active record object being transferred into a variable.
	puts @events.class
	erb :'events/index'
end

post '/events' do  #accepting the form data and updating the messages table in db
	@events = events.new(
		title: params[:title], #params title comes from form. title on left is DB
		content: params[:content],
		author: params[:author]
	)
	if @events.save
		redirect '/events'
	else
		erb :'events/new'
	end
end