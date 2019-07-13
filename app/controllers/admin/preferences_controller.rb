class Admin::PreferencesController < ApplicationController
  def index
    # @preference = Preference.first_or_create(allow_create_artists: true, allow_create_songs: true, artist_sort_order: "DESC", song_sort_order: "DESC")
    @preference = Preference.new(allow_create_artists: true, allow_create_songs: true, artist_sort_order: "DESC", song_sort_order: "DESC")
  end
  
  def update
    
  end
  
  private
  
  def preference_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :artist_sort_order, :song_sort_order)
  end
end