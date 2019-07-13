class Admin::PreferencesController < ApplicationController
  def index
    @preference = Preference.fi
  end
end