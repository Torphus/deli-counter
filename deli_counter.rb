def line(queue)
    if queue.length == 0
        puts "The line is currently empty."
    else queue.length > 0
        msg = "The line is currently:"
        queue.each.with_index(1) do |name, idx|
            msg << " #{idx}. #{name}"
        end
        puts msg
    end
end

def take_a_number(queue, name)
    queue << name
    puts "Welcome, #{name}. You are number #{queue.length} in line."
end

def now_serving(queue)
    if queue.length == 0
        puts "There is nobody waiting to be served!"
    else queue.length > 0
        puts "Currently serving #{queue[0]}."
        queue.shift 
    end
end