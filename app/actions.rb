# Homepage (Root path)

helpers do
  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

end

get '/' do
  erb :'login/index'
end


get '/songs' do
  if login?
    @songs = Song.all
    erb :'songs/index'
   else
      erb :'login/index'
   end 

end

get '/songs/new' do
  @songs = Song.new
  erb :'songs/new'
end

get '/songs/:id' do
  @songs = Song.find params[:id]
  erb :'songs/show'
end

post '/songs' do
  @songs = Song.new(
    users_id: session[:user_id],
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

#-------- Login ---------

userTable = {}

get "/signup" do
  erb :'signup/signup'
end

def login?
    if session[:user_id].nil?
      return false
    else
      return true
    end
end

def username
    return session[:user_id]
end

get "/logout" do
  session[:user_id] = nil
  @user = nil
  redirect "/"
end

post "/login" do
  userTable = User.where(email: params[:email], password: params[:password])
  
  if !userTable.empty?
      session[:user_id] = userTable[0][:id]
      session[:full_name] = userTable[0][:name]
      @songs = Song.all
      erb :'songs/index'

  else
    erb :'login/error'  
  end
  
end

post "/signup" do

  @user = User.new(
    name:   params[:full_name],
    email: params[:email],
    password:  params[:password]
  )
  if @user.save
    # redirect 'login/index'
    erb :'login/index'
  else
    erb :'signup/signup'
  end

end 

post "/upvote" do

  @upvote = Upvote.new(
    song_id:   params[:song_id],
    user_id: params[:user_id]
  )
  if @upvote.save
    # redirect 'login/index'
    @songs = Song.all
    erb :'songs/index'
  else
    # erb :'signup/signup'
  end

end 

