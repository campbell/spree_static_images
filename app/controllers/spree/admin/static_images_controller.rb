class Spree::Admin::StaticImagesController < Spree::Admin::ResourceController

  def index
    @static = params[:static] == 'static'

    if @static
      @images = Spree::StaticImage.all
    else
      @images = Spree::Image.where('viewable_id is not null').order('viewable_id').includes(:viewable).all
    end

  end

  def create
    filenames = Array(params[:filenames])
    filenames.each do |filename|
      Spree::StaticImage.create(attachment: filename)
    end

    if filenames.present?
      flash[:success] = "Added #{filenames.length} images"
    end

    redirect_to admin_static_images_path(static: :static)
  end

  def new
    @static_image = Spree::StaticImage.new
  end

end
