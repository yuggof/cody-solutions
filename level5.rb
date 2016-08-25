=begin
Implement class Squirrel in a way below API will be supported.

squirrel = Squirrel.new
squirrel.fight do
  jump
  kick
  punch
  jump
end

squirrel.actions #=> ['jump', 'kick', 'punch', 'jump']
=end

class Squirrel
  class ActionsRecorder
    attr_reader :actions

    def initialize
      @actions = []
    end

    def jump
      @actions << 'jump'
    end

    def kick
      @actions << 'kick'
    end

    def punch
      @actions << 'punch'
    end
  end

  attr_reader :actions

  def initialize
    @actions = []
  end

  def fight(&block)
    ar = ActionsRecorder.new

    ar.instance_exec(&block)

    @actions = ar.actions
  end
end
