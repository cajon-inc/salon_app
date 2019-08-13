class SalonController < ApplicationController
  before_action :set_salon, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:show]


  def index
    @salons = current_user.salons
  end

  def new
    @salon = current_user.salons.build
  end

  def create
    @salon = current_user.salons.build(salon_params)
    if @salon.save
      redirect_to salon_listing_path(@salon), notice: '保存しました'
    else
      render :new, notice: '問題が発生しました'
    end
  end

  def show
  end

  def listing
  end

  def concept
  end

  def coloring
  end

  def location
  end

  def links
  end

  def tagmanage
  end

  def update
    if @salon.update(salon_params)
      flash[:notice] = "更新しました"
    else
      flash[:notice] = "問題が発生しました"
    end
    redirect_back(fallback_location: request.referer)
  end

  private

  def set_salon
    @salon = Salon.find(params[:id])
  end

  def salon_params
    params.require(:salon).permit(:shop-name, :nav-logo, :top-catch, :logo, :youtube_id, :link-color, :bgcolor-2, :concept, :concept-color, :concept1-title, :concept1-image, :concept1, :concept2-title, :concept2-image, :concept2, :concept3-title, :concept3-image, :concept3, :reserve_btn-bg, :reserve_btn-txt, :store-photo, :data-bgcolor, :data-color, :address, :tel, :tel-sp, :hour, :holiday, :access, :card, :map, :reserve, :facebook, :instagram, :twitter, :hotpepper, :youtube, :blog, :site, :recruit, :copy, :sp-fix_btn, :retargeting, :gtm_head, :gtm_body, :footer_logo:shop-name, :nav-logo, :top-catch, :logo, :youtube_id, :link-color, :bgcolor-2, :concept, :concept-color, :concept1-title, :concept1-image, :concept1, :concept2-title, :concept2-image, :concept2, :concept3-title, :concept3-image, :concept3, :reserve_btn-bg, :reserve_btn-txt, :store-photo, :data-bgcolor, :data-color, :address, :tel, :tel-sp, :hour, :holiday, :access, :card, :map, :reserve, :facebook, :instagram, :twitter, :hotpepper, :youtube, :blog, :site, :recruit, :copy, :sp-fix_btn, :retargeting, :gtm_head, :gtm_body, :footer_logo)
  end

end
