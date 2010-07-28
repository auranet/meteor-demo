# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_meteor-demo_session',
  :secret      => '2b40267c3a63518df7cefa7ab6144a682f7a495b682c81889bbc1bd3d346837093da3ffd989c26fa85e194fe0b4a10026795ba395e09268854dcaae75c321209'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
