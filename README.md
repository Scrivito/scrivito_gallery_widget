# ScrivitoGalleryWidget

A Widget to insert an easy gallery to your page.

## Installation

Add this line to your application's Gemfile:

    gem 'scrivito_gallery_widget'

Add this line to your application JavaScript manifest:

    //= require scrivito_gallery_widget

Add this line to your application Stylesheet manifest:

    *= require scrivito_gallery_widget


## Localization

The following code represents the default localization for English. Copy it to your `en.yml` and change it if necessary:

```yaml
en:
  scrivito_gallery_widget:
    thumbnail:
      title: Gallery
      description: Insert an easy gallery to your page
    details:
      images: Images
      show_description: Show Description
      activate_on: Activate on
```

## Customization

You can add a slider to your image selection.

E.g. using the [slick slider](http://kenwheeler.github.io/slick), that is also used in the [slick\_slider\_widget](https://github.com/scrivito/scrivito_slick_slider_widget):

```js
$('.scrivito_gallery_widget_image_list').slick();
```

This Gem also provides a hook to define an image description. All you have to do is to add a partial to your app at `image/_image_description.html.erb`. A variable named `image` will be send to this partial:

```ruby
# in your image model
class image
  attribute :blob, :binary
  attribute :description, :html
end
```

```html
<!-- in the image/_image_description.html.erb partial -->
<%= scrivito_tag :div, image, :description, class: 'image-description' %>
```
