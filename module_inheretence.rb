module Base
    def f1
        p 'hello'
    end
end

# module Mod << Base - modules not include
module Mod
    def f1
        p 'hello::Mod'
    end
end

class MyClass 
    include Mod
end

class MyClass1
    include MyClass #classes not include
end

MyClass1.new.f1