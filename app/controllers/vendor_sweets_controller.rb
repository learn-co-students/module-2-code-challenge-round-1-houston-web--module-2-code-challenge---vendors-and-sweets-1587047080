class VendorSweetsController < ApplicationController


  def new

    # if(flash[:vendor_sweet_attributes] != nil)
    #     @vendor_sweet = VendorSweet.new(flash[:vendor_sweet_attributes])
    #     @vendors = Vendor.all
    #     @sweets = Sweet.all
    # else
    #     @vendor_sweet = VendorSweet.new
    # end
    @vendor_sweet = VendorSweet.new
    @vendors = Vendor.all
    @sweets = Sweet.all
  end

  def create
    @vendor_sweet = VendorSweet.create(vendor_sweet_params)
    # if @vendor_sweet.valid?
    #   @vendor = Vendor.find(@vendor_sweet[:vendor_id])
    #   redirect_to vendor_path(@vendor)
    # else
    #   flash[:vendor_sweet_attributes] = @vendor_sweet.attributes
    #   redirect_to new_vendors_sweet_path
    # end

    @vendor = Vendor.find(@vendor_sweet[:vendor_id])
    redirect_to vendor_path(@vendor)


  end

  private
  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
  end
end
