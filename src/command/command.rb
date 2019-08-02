# frozen_string_literal: true

# ###
# "命令"を表現する
class Command
  def execute
    raise NotImplementedError, 'You must implement the parse method'
  end
end
