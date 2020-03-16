module ExampleModule

    PI = 3.1415

    # Functions in modules must be defined using either self.<func_name> or <module_name>.<func_name>
    def self.sin(x)
        return x * PI * 4
    end
end