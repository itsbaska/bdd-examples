source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "cucumber"
gem "rake"

group :test do
  gem 'shoulda-matchers'
  gem 'rack-test'
  gem 'rspec'
end