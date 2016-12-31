class GalleryController < ApplicationController
  def index
    @images = Dir.glob( "#{ Rails.root }/app/assets/images/gallery/*.{jpg,png}" )
  end
end

