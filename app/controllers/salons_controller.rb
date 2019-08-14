class SalonsController < ApplicationController
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
      redirect_to listing_salon_path(@salon), notice: '保存しました'
    else
      flash[:alert] = "問題が発生しました"
      render :new
    end
  end

  def show
  end

  def listing
  end

  def sublisting
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
      flash[:notice] = "保存しました"
    else
      flash[:alert] = "問題が発生しました"
    end
    redirect_back(fallback_location: request.referer)
  end

  private

  def set_salon
    @salon = Salon.find(params[:id])
  end

  def salon_params
    params.require(:salon).permit(:shop_name, :nav_logo, :top_catch, :logo, :youtube_id, :link_color, :bgcolor_2, :concept, :concept_color, :concept1_title, :concept1_image, :concept1, :concept2_title, :concept2_image, :concept2, :concept3_title, :concept3_image, :concept3, :reserve_btn_bg, :reserve_btn_txt, :store_photo, :data_bgcolor, :data_color, :address, :tel, :tel_sp, :hour, :holiday, :access, :card, :map, :reserve, :facebook, :instagram, :twitter, :hotpepper, :youtube, :blog, :site, :recruit, :copy, :sp_fix_btn, :retargeting, :gtm_head, :gtm_body, :footer_logo, :shop_name, :nav_logo, :top_catch, :logo, :youtube_id, :link_color, :bgcolor_2, :concept, :concept_color, :concept1_title, :concept1_image, :concept1, :concept2_title, :concept2_image, :concept2, :concept3_title, :concept3_image, :concept3, :reserve_btn_bg, :reserve_btn_txt, :store_photo, :data_bgcolor, :data_color, :address, :tel, :tel_sp, :hour, :holiday, :access, :card, :map, :reserve, :facebook, :instagram, :twitter, :hotpepper, :youtube, :blog, :site, :recruit, :copy, :sp_fix_btn, :retargeting, :gtm_head, :gtm_body, :footer_logo)
  end

end
