def benchmark
  # Your benchmarking code goes here.
  start_time = Time.now
  some_task = yield
  end_time = Time.now
  return end_time - start_time
end
 
# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000
 
running_time = benchmark { long_string.reverse }
 
puts "string.reverse took #{running_time} seconds to run"