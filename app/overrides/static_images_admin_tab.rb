Deface::Override.new(virtual_path: 'spree/layouts/admin',
                     name: 'images_admin_tab',
                     insert_bottom: '[data-hook="admin_tabs"]',
                     text: "<%= tab(:static_images, icon: 'icon-file')  %>",
                     disabled: false)

