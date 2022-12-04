module ClassMethods
    def f1
        p 'hello f1::ClassMethods'
    end
end

module InstanceMethods
    def f2
        p 'hello f1::InstanceMethods'
    end
end

class MyClass
    extend ClassMethods
    include InstanceMethods
end

MyClass.f1
mc = MyClass.new

p MyClass.instance_methods.include?(:f2)
p MyClass.methods.include?(:f1)

p MyClass.singleton_class.instance_methods.include?(:f1)

true 

# p Hash[%w[0].class.new(3){[[_1],[_1**2]]}]
p BasicObject.class
p Class.class
p Class.ancestors