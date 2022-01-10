class A
  def action
    puts 'A'
    super if defined?(super)
  end
end

module B
  def action
    puts 'B'
    super if defined?(super)
  end
end

module C
  def action
    puts 'C'
    super if defined?(super)
  end
end

module D
  def action
    puts 'D'
    super if defined?(super)
  end
end

class E < A
  include B
  prepend C

  def action
    puts 'E'
    super if defined?(super)
  end
end

object = E.new
object.extend(D)
object.action

