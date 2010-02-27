# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_framework_session',
  :secret => 'a37231db8197109994b265d675899b738c0c75a638001514b0a1c4352e7d01ce436abe70d936723874aab16af2c51a42ad6f692fb0fa9cea758ad679f12b0720'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
