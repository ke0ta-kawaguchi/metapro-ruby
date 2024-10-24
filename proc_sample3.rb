# frozen_string_literal: true

def double(callback_obj)
  callback_obj.call * 2
end

# lam = -> { 10 }
# puts double(lam)

# proc = proc { return 10 }
# puts double(proc)

proc = proc { return 10 }
puts double(proc)
