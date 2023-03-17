katz_deli = []

def line(queue)
  if queue.length == 0
    puts "The line is currently empty."
  else 
    name = queue.map.with_index(1) { |name, i| "#{i}. #{name}"}.join(' ')
    puts "The line is currently: #{name}"
  end
end

def take_a_number(queue, name)
  queue << name
  puts "Welcome, #{name}. You are number #{queue.length} in line."
end

def now_serving(queue)
  if queue.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{queue[0]}."
    queue.shift
  end
end
