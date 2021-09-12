class ValuesController < ApplicationController
  helper_method :property, :value, :new_value
  
  def create
    @value = property.values.new value_params
    if @value.save
      redirect_to property_value_path(property, @value), notice: :success
    else
      flash[:error] = @value.errors.messages
      render 'new'
    end
  end

  private

  def property
    @property ||= Property.find params[:property_id]
  end

  def value
    @value ||= property.values.find params[:id]
  end

  def new_value
    @value ||= Value.new
  end

  def value_params
    params.require(:value).permit(:text, :description)
  end
end
