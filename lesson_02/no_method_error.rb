def car(new_car)
  make = make(new_car)
  model = model(new_car)
  [make, model]
end

def make(new_car)
  new_car.split(" ").tap {|x| puts x}
end

def model(new_car)
  new_car.split(" ").tap {|x| puts x}
end

 make, model = car("Ford Mustang")
make == "Ford"
        # => true
 #model.start_with?("M") # => NoMethodError: undefined method `start_with?' for nil:NilClass
