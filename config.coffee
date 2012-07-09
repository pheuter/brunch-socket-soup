exports.config =
  # See docs at http://brunch.readthedocs.org/en/latest/config.html.
  files:
    javascripts:
      defaultExtension: 'coffee'
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/
      order:
        before: [
          'vendor/scripts/console-helper.js',
          'vendor/scripts/jquery-1.7.2.js',
          'vendor/scripts/underscore-1.3.3.js',
          'vendor/scripts/backbone-0.9.2.js'
        ]

        after: [
          'vendor/scripts/bootstrap-alert.js',
          'vendor/scripts/bootstrap-button.js',
          'vendor/scripts/bootstrap-carousel.js',
          'vendor/scripts/bootstrap-collapse.js',
          'vendor/scripts/bootstrap-dropdown.js',
          'vendor/scripts/bootstrap-modal.js',
          'vendor/scripts/bootstrap-scrollspy.js',
          'vendor/scripts/bootstrap-tab.js',
          'vendor/scripts/bootstrap-tooltip.js',
          'vendor/scripts/bootstrap-popover.js',
          'vendor/scripts/bootstrap-typeahead.js'
        ]

    stylesheets:
      defaultExtension: 'styl'
      joinTo: 'stylesheets/app.css'
      order:
        before: [
          'vendor/styles/bootstrap.css',
        ]

        after: [
          'vendor/styles/bootstrap-responsive.css'
        ]

    templates:
      defaultExtension: 'hbs'
      joinTo: 'javascripts/app.js'
