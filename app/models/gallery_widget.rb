class GalleryWidget < Widget
  attribute :images, :referencelist, only: Image

  attribute :show_description, :enum, values: ['Yes','No'], default: 'Yes'
  attribute :activate_on, :enum, values: ['mouseenter','click'], default: 'click'

  def image_description(image)
    return '' unless show_description?
    Obj.respond_to?('gallery_image_description') ? Obj.gallery_image_description(image) : image.meta_data[:filename]
  end

  def show_description?
    show_description == 'Yes'
  end

  def activate_method
    activate_on.presence || 'click'
  end
end
