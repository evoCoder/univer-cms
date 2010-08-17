# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_univer-cms_session',
  :secret      => 'e1890b9e1ce1344712d69c48ae5157a1da7059ce088b7f53100bced558f5b3b6a2256ef32d00743efadbbb1f787a3c762dec05898bd2f9ff3c058b3da244c750'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
