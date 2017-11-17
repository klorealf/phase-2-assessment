delete "/sessions" do
  session.destroy
  redirect "/"
end

get "/sessions/new" do
  erb :"/sessions/_login_form"
end

post "/sessions" do
  user = User.find_by(email: params[:user][:email])
  if user && user.authenticate(params[:user][:password])
    session_login(user)
    redirect "/"
  else
    @error = "Email and/or password is invalid. Please try again."
    erb :"/index"
  end
end
