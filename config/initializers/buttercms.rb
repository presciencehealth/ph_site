require 'buttercms-ruby'

# If you added the Heroku Butter add-on, ENV["BUTTER_TOKEN"] will be defined.
# Otherwise, grab your token at https://buttercms.com/profile/ and set it below
ButterCMS::api_token = '01743179436109c0c755da1924b85c09ece380d9'

# Test mode can be used to setup a staging website for previewing content or for testing content during local development.
# ButterCMS::test_mode = true