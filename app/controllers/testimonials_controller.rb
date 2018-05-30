class TestimonialsController < ApplicationController
  before_action :set_item
  
  def new
    @testimonial = Testimonial.new
  end

  def create
    @testimonial = @item.testimonials.new(testimonial_params)
    if @testimonial.save
      redirect_to department_item_path(@item.department_id, @item)
    else
      render :new
    end
  end

  private
    def set_item
      @item = Item.find(params[:item_id])
    end

    def testimonial_params
      params.require(:testimonial).permit(:desc, :author)
    end

end
