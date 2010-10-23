module Admin::ImTypesHelper

  def im_types
    ImType.all.collect {|im_type|[im_type.name, im_type.id]}
  end
end

