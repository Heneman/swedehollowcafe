class SiteController < ApplicationController
  def home
  end

  def gallery
    @images = Dir.glob("#{ Rails.root }/app/assets/images/gallery/*.{jpg,png}" )
  end

  def catering
  end
end
