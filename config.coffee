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
          'vendor/scripts/jquery-1.9.0.min.js',
          'vendor/scripts/underscore-1.4.4.js',
          'vendor/scripts/backbone-0.9.10.js'
        ]

        after: [
          'vendor/scripts/bootstrap.min.js'
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
