class Demo
    class << Demo
        def f 
            p 'hello from singleton'
            p self.superclass
        end
    end

    def self.static_f 
        p 'static method'
    end

    def f
        p 'class new'
    end
end

demo1 = Class.new do
    def f
        p 'class new'
    end
end

v = demo1.new
def v.f1 
    p 'v.f1'
end
# v.f1
def Demo.f1
    p 'static f1::Demo'
    p self.superclass
end

# Demo.singleton_class.instance_methods.f1
# p Demo.singleton_class.instance_methods.include?(:f1)
p v.singleton_class.instance_methods.include?(:f1)