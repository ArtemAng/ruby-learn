class Base
    def f
        p 'hello from Base'
    end
end

module Mod
    def f
        p 'hello from module'
    end
end 

class Demo < Base
include Mod
    def f
        p 'hello from class'
    end
end

Demo1 = Demo
demo = Demo1.new

class << demo
    def f
        p 'hello from singleton class'
        p object_id
    end
end

class << Demo
    def f
        p 'hello from static class'
    end
end

p Demo.ancestors
p demo.object_id
Demo.f
# def demo.f
#     p 'hello from demo'
# end

# demo1 = Demo.new

demo.f
# p Demo.superclass
# p Class.superclass
# p Module.superclass
# p Object.superclass
# p Object.ancestors