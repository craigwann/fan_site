class OpinionsController < ApplicationController

  def add
   @user = User.find(session[:user_id])
   @song = Song.find(params[:id])
   @user.songs << @song
   flash[:notice] = 'Event was saved.'
 end

 def create
     @user = User.find(params[:user_id])
     @song = @user.songs.new(song_params)
     if @song.save
       redirect_to user_path(@song.user)
     else
       render :new
     end
   end

end
