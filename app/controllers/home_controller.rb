class HomeController < ApplicationController
  def index
  end

  def submit_image
    return_parama=Cloudinary::Uploader.upload(params[:test_image])
    logger.info('==========================================')
    logger.info(return_parama)
    flash[:notice]="image_uploaded"
    redirect_to '/'

  end
end
