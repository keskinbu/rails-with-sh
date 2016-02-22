# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure the secrets in this file are kept private
# if you're sharing your code publicly.

development:
  secret_key_base: 4af463dc86830e08ba949fee704c3be11482de5c5d348bd1230abaf71ed80274cb3a64df07a5c44e1155ad17bac74c922df54452e72e7454cadcf38391cc777f

test:
  secret_key_base: 61ce3c2292c4f67cfcb23521bcffb82f4f592ccd939ccd317de740459cfe4e7274f4254f80bfd1e657d76e39b0b87d53d3ade3cda80c228428133b4ffc4807ba

# Do not keep production secrets in the repository,
# instead read values from the environment.
production:
  secret_key_base: 0acef49197e8aedddbd22c6e6993642398c6cc4beaeb2f72fd5d3a289dcf75fedf8256c044f45b9482d2b4f63aa04d613265b5c7af5f9420e376df9b4c4d9024
