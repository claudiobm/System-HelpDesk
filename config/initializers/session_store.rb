# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_helpdesk_system_session',
  :secret      => '2755be3d8edcf2dbea70bd6d6eb2954102eff42d976b92dd2ccddcd1251cbcc970a03a93f88952bacb22cf5ad297bab14130948c619226ee3f96adc19cf279eb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
