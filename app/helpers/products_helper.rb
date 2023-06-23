module ProductsHelper

    def show_image(product)
        if product.image.image?
          image_tag product.image, id: 'procedure-image', style:'height: 400px; width:auto'
        else
          image_tag "3", id: 'procedure-image'
        end
      end

    def price(product)
        if product.price != 0
          return product.price.to_s + "$"
        else
          return "Gratis"
        end
    end

end
