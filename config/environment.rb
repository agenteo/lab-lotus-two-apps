require 'rubygems'
require 'bundler/setup'
require 'lotus/setup'
require_relative '../lib/bookshelf'
require_relative '../apps/web/application'
require_relative '../apps/game_zone/application'

Lotus::Container.configure do
  mount Web::Application, at: '/'
  mount GameZone::Application, at: '/'
end
