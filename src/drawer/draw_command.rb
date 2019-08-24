# frozen_string_literal: true

require_relative 'drawable'

# ###
# "シンボルの描画命令"を表現する
class DrawCommand < Command
  def initialize(drawable, symbol)
    @drawable = drawable
    @symbol = symbol
  end

  def execute
    @drawable.draw(@symbol)
  end
end
