# config/initializers/cors.rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:3001' # Update with the appropriate origin
  
      resource '/notices',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options],
        credentials: true
    end
  end
  