Deface::Override.new(:virtual_path => "spree/shared/_products",
                    :name => "products_reset_cycle",
                    :insert_before => "#products[data-hook]",
                    :original => '250e9a5aeade63e43e78bd927592e2fee6e0edb2',
                    :text => "<% reset_cycle('default') %>")