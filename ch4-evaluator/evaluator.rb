#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

class Evaluator
  attr_reader :environment

  def initialize()
    @environment = Environment.new([])
    @environment = @environment.extend_environment(Primitive::CATALOG.keys,
                                                   Primitive::CATALOG.values)
  end

  def eval(object)
    object.eval(@environment)
  end
end

class Environment
  def initialize(frames)
    @frames = frames
  end

  def lookup_variable_value(var)
    @frames.each do |frame|
      return frame[var] if frame[var] != nil
    end
    raise "lookup_variable_value : unbound variable " + var.to_s
  end

  def extend_environment(vars, values)
    begin
      return Environment.new([make_frame(vars, values)] + @frames)
    rescue
      raise "extend_envronment : fatal error " +
            vars.to_s + " " + values.to_s
    end
  end

  def define_variable!(var, value)
    @frames[0][var] = value
  end

  def set_variable_value!(var, value)
    @frames.each do |frame|
      return frame[var] = value if frame[var] != nil
    end
    raise "set_variable_value! : unbound variable " + var.to_s
  end

  private
  def make_frame(vars, values)
    vars.zip(values).to_h
  end
end
