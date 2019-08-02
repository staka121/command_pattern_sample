# frozen_string_literal: true

require_relative 'command/macro_command'
require_relative 'drawer/draw_canvas'
require_relative 'drawer/draw_command'

# usage: ruby src/main.rb

class Main
  def initialize
    @history = MacroCommand.new
    @canvas = DrawCanvas.new(@history)
  end

  def put_string(str)
    cmd = DrawCommand.new(@canvas, str)
    @history.append(cmd)
    puts '# execute result #'
    cmd.execute
  end

  def clear_string
    @history.clear
    @canvas.print
  end

  def show_history
    puts '# history #'
    @history.commands.each { |cmd| print cmd.execute }
  end
end

main = Main.new

puts 'Put your string (10 times)'

10.times.each do |_|
  puts '# input string #'
  str = gets

  main.put_string(str)
  main.show_history
end
