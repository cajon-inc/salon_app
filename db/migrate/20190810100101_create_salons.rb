class CreateSalons < ActiveRecord::Migration[5.2]
  def change
    create_table :salons do |t|
      t.string :shop_name
      t.string :nav_logo
      t.string :top_catch
      t.string :logo
      t.string :youtube_id
      t.string :concept1_title
      t.string :concept1_image
      t.text :concept1
      t.string :concept2_title
      t.string :concept2_image
      t.text :concept2
      t.string :concept3_title
      t.string :concept3_image
      t.text :concept3
      t.string :store_photo
      t.string :address
      t.string :tel
      t.string :tel_sp
      t.text :hour
      t.text :holiday
      t.text :access
      t.boolean :card
      t.text :map
      t.string :reserve
      t.string :facebook
      t.string :instagram
      t.string :twitter
      t.string :hotpepper
      t.string :youtube
      t.string :blog
      t.string :site
      t.string :recruit
      t.string :copy
      t.string :footer_logo
      t.string :link_color
      t.string :bgcolor_2
      t.string :concept_color
      t.string :reserve_btn_bg
      t.string :reserve_btn_txt
      t.string :data_bgcolor
      t.string :data_color
      t.string :sp_fix_btn
      t.text :retargeting
      t.text :gtm_head
      t.text :gtm_body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
