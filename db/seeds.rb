# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require_relative './comic_data.rb'
require_relative './publisher_data.rb'

Comic.destroy_all
Publisher.destroy_all

comic_data = get_comic_data()
publisher_data = get_publisher_data()

comic_data.each_pair do |publisher_name, comics|
  info = publisher_data[publisher_name]
  current_publisher = Publisher.create!({
    name:        info[:name],
    nationality: info[:nationality]
    })

    comics.each do |comic|
      Comic.create!({
        title:      comic[:title],
        issue_no:   comic[:issue_no],
        authors:    comic[:authors],
        artists:    comic[:artists],
        year:       comic[:year],
        cover_url:  comic[:cover_url],
        publisher:  current_publisher
        })
      end
    end
