class SongsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @song = @user.songs.new
  end

  def create
  @user = User.find(params[:user_id])
  @song = @user.songs.new(song_params)
  if @song.save
    redirect_to user_path(@user)
  else
    render :new
  end
end

def destroy
  @user = User.find(params[:user_id])
  @song = @user.songs.find(params[:id])
  @song.destroy
  redirect_to user_path(@song.user)
end

def edit
  @user = User.find(params[:user_id])
  @song = @user.songs.find(params[:id])
end

def update
  @user = User.find(params[:user_id])
  @song = @user.songs.find(params[:id])
  if @song.update(song_params)
    redirect_to user_path(@song.user)
  else
    render :edit
  end
end

private
def song_params
  params.require(:song).permit(:title, :artist)
end
end
