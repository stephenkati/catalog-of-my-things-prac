require './classes/item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played
  attr_reader :id

  def initialize(publish_date, multiplayer, last_played)
    super(publish_date)
    @id = rand(1...1000)
    @multiplayer = multiplayer
    @last_played = last_played
  end

  def can_be_archived?
    super && Time.now.year - Date.parse(@last_played).year > 2
  end

  def to_hash
    {
      id: @id,
      publish_date: @publish_date,
      multiplayer: @multiplayer,
      last_played: @last_played
    }
  end
end
