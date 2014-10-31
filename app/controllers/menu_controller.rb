class MenuController < ApplicationController
  def index
  end

  def download_pdf
    send_file( "#{ Rails.root }/app/assets/pdfs/#{ params[:menu] }.pdf",
               filename: "SwedeHollowCafe#{ params[:menu].to_s.capitalize }Menu",
               type: "application/pdf" )
  end
end
