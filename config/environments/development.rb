Movies::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  MOVIES = [
    {
      id: '12989',
      title: 'The Shawshank Redemption'
    },
    {
      id: '405587791',
      title: 'The Godfather'
    },
    {
      id: '771041731',
      title: 'The Dark Knight'
    },
    {
      id: '13863',
      title: 'Pulp Fiction'
    },
    {
      id: '745781820',
      title: 'Death Proof'
    },
    {
      id: '460859831',
      title: 'Grindhouse'
    },
    {
      id: '771206377',
      title: 'Hobo With a Shotgun'
    }
  ]

  USERS = [
  {
    id: '1',
    email: 'john.doe@mail.dk',
    password: '123456',
    passwordConfirmation: '123456',
    suggested: '12989',
    last: '745781820',
    seen: ['13863', '745781820'],
    skipped: ['405587791']
  }
]
end
