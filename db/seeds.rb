[AdminUser, Setting, Store, Product].map(&:delete_all)

AdminUser.create!(email: 'admin@example.com', password: 'password') if Rails.env.development?
Setting.create_or_find_by!(key: 'min_version', value: '0.0')

(1..5).each do |store|
    Store.create(
        name: "Store #{store}",
        description: "Store #{store} Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    )
end

color = Variant.create(name: "color", store_id: Store.select("id").sample.id)
size = Variant.create(name: "size", store_id: Store.select("id").sample.id)

red = VariantItem.create(variant_id: color.id, name: "red")
black = VariantItem.create(variant_id: color.id, name: "black")
blue = VariantItem.create(variant_id: color.id, name: "blue")

x = VariantItem.create(variant_id: size.id, name: "X")
m = VariantItem.create(variant_id: size.id, name: "M")
l = VariantItem.create(variant_id: size.id, name: "L")

data = color.variant_items.map(&:name).product size.variant_items.map(&:name)

(1..10).each_with_index do |product, index|
    product = Product.new(
        store_id: Store.select("id").sample.id,
        name: "Product #{product}",
        price: 100000,
        description: "Product #{product} Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets."
    )
    product.save

    data.each do |value|
        product.product_variants.build(
            sku: "productID-#{product.id}/#{value.join("/")}",
            quantity: 10
        )
    end
    product.save!
    
end


ProductVariant.last