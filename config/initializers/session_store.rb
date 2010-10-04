# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_penvelo_session',
  :secret      => '781ae49deefaf0fb4af2e11acf644892580eabd52eeb3c10e33ce4d94cf1b4c31dbf331626e022c5aab2fa2388b801c4392dd079cb1fb55cede1689aaa80231b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
