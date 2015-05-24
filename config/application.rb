require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MediaStoreCr
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :es

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    #config.paperclip_defaults = {
    #      :storage => :s3,
    #     :s3_credentials => {
    #        :bucket => 'Sample_Bucket'
    #      }
    #    }

    config.action_view.field_error_proc = Proc.new { |html_tag, instance|
      class_attr_index = html_tag.index 'class="'
      if class_attr_index
        # target only p's and span's with class error already there
        error_class = if html_tag =~ /^<(p|label|span).*/
                        ''
                      else
                        'field_with_errors '
                      end

        html_tag.insert class_attr_index + 7, error_class
      else
        html_tag.insert html_tag.index('>'), ' class="error"'
      end
    }
  end
end
