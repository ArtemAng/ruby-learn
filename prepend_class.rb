module InstanceMethods
    def f2
        p 'hello f1::InstanceMethods'
    end
end

class MyClass
    prepend InstanceMethods

    def f2
        p 'hello f1::MyClass'
    end
end

mc = MyClass.new
mc.f2