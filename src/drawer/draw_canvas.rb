# frozen_string_literal: true

require_relative 'drawable'

# ###
# 実際の "描画対象" を表現する
class DrawCanvas < Drawable
  def initialize(history)
    @history = history
  end

  def print
    @history.execute
  end

  def draw(symbol)
    puts symbol
  end
end
