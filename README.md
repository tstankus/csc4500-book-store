# csc4500-book-store

#Example for config/secrets.yml
---------------------------------------------------------------
# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rails secret` to generate a secure secret key.

# Make sure the secrets in this file are kept private
# if you're sharing your code publicly.

development:
  secret_key_base: 50f7b305c2c9ea617e6732e1298a9f00006779b6d52483ae1b4014c19846cbfefaa5f3c887187e407011f3cc4daf2068d23fb256edf7a926a190e8d2a1006936

  database:
    :host: localhost
    :name: BookStore
    :username: YOUR USERNAME
    :password: YOUR PASSWORD
test:
  secret_key_base: 21f2d514a771e985b864041513b30bef7115be73a03d256b85c2a52d0ffc1df7f4a1b13228b49a1e7251caf1b96147b6b495c669bf91cbd90e4f2f2dfa1816c9

# Do not keep production secrets in the repository,
# instead read values from the environment.
production:
  secret_key_base: <%= ENV["SECRET_KEY_BASE"] %>
---------------------------------------------------------------