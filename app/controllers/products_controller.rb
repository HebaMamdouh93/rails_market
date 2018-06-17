class ProductsController < InheritedResources::Base
  before_action :authenticate_user!
  def add_to_fav
    product = Product.find(params[:id])
   
    unless product.users.where(id: current_user.id).first
      product.users << current_user 
      #product.save
    end

    respond_to do |format|
      if product.save
        format.html { redirect_to products_url, notice: 'Product added successfully to your favorities.' }
       
      else
        
      end
    end
    
  end
  private

    def product_params
      params.require(:product).permit(:name, :price, :category_id)
    end

   

end

