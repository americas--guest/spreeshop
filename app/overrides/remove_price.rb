Deface::Override.new(:virtual_path => 'spree/shared/_products',
  :name => 'remove_price_for_preview',
  :remove => "[data-hook='price_selling_lead']",)
  