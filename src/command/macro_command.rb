# frozen_string_literal: true

require_relative 'command'

# ###
# "複数の命令をまとめた命令"を表現する
class MacroCommand < Command
  attr_reader :commands

  def initialize
    @commands = []
  end

  def execute
    @commands.each(&:execute)
  end

  def append(command)
    @commands.push(command)
  end

  def undo
    return if @commands.empty?

    @commands.pop
  end

  def clear
    @commands.clear
  end
end
