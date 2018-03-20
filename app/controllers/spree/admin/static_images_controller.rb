class Spree::Admin::StaticImagesController < Spree::Admin::ResourceController

  def index
    @static = params[:static] == 'static'

    if @static
      @images = Spree::Image.where(viewable_id: nil).all
    else
      @images = Spree::Image.where('viewable_id is not null').order('viewable_id').includes(:viewable).all
    end

  end

  def new
    @static_image = Spree::StaticImage.new
  end

end
