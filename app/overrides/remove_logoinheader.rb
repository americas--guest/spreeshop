Deface::Override.new(
    virtual_path: 'spree/shared/_header',
    remove: "erb[loud]:contains('logo')",

    name: 'spree_application_remove_logo.rb')