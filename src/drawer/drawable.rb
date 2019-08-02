# frozen_string_literal: true

# ###
# "描画対象"を表現する
class Drawable
  def draw
    raise NotImplementedError, 'You must implement the parse method'
  end
end
