require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/
describe 'drush' do
  it do
    should contain_class('drush')

    # Make sure our exec exists
    should contain_exec('install-drush')

    # We do not want drush installed from homebrew
    should contain_package('drush').with_ensure('absent')
  end
end
