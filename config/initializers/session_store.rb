# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nkbook_session',
  :secret      => '086c0efbb07b97bc7f552416c1819c859d95c6752f2cf41ad9f719f4cb89c7e9497dbca13d11b734647b8076ba3d6b0ac9c1052a4e798e74541f1f14dad8837e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
