Deface::Override.new(
    virtual_path: 'spree/layouts/spree_application',
    remove: "erb[loud]:contains('breadcrumbs')",

    remove: "erb[loud]:contains('breadcrumbs')",
    name: 'spree_application_remove_breadcrumbs.rb')