class Spree::Admin::StaticImagesController < Spree::Admin::ResourceController

  def index
    @images = Spree::Image.all
  end

end
