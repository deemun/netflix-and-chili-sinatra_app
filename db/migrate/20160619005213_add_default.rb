class AddDefault < ActiveRecord::Migration
  def change
    change_column_default :events, :image_file, "http://www.veteranstodaymoney.com/wp-content/uploads/2016/02/Fotolia_33939290_Subscription_XXL.jpg"
  end
end
