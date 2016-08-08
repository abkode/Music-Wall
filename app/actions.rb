# Homepage (Root path)
get '/' do
  erb :index
end

get '/songs' do
  @songs = Songs.all
  erb :'songs/index'
  # 'Message List here'
end

get '/songs/new' do
  @songs = Songs.new
  erb :'songs/new'
end

get '/songs/:id' do
  @songs = Songs.find params[:id]
  erb :'songs/show'
end

post '/songs' do
  @songs = Songs.new(
    song_title:   params[:song_title],
    author: params[:author],
    url:  params[:url]
  )
  if @songs.save
    redirect '/songs'
  else
    erb :'songs/new'
  end
end