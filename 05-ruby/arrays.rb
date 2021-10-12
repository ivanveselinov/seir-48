require 'pry' # <script src="pry.js"></script>

# ### 1. Create an array of the days of the week
# - Create a variable named `days_of_the_week` as an array of the following:
#     - Monday
#     - Tuesday
#     - Wednesday
#     - Thursday
#     - Friday
#     - Saturday
#     - Sunday

days_of_the_week = %w( Monday Tuesday Wednesday Thursday Friday Saturday Sunday )

# puts days_of_the_week # print to the screen for the general public
# p days_of_the_week # print to the screen for programmers (programmers' print)

# ### 2. My calendar says the first day is Sunday...
# - Remove Sunday from the last postion and move it to the first position.  Use array methods.

# Long winded but explicit:
# day_to_move = days_of_the_week.pop
# days_of_the_week.unshift day_to_move

# Very clever:
# days_of_the_week.unshift days_of_the_week.pop

# Most Rubyish:
days_of_the_week.rotate! -1 # destructively rotate in reverse order by one element.

# p days_of_the_week

# ### 3. Create a new array of the days of the week:
# - The first inner array should be the weekdays
# - The second inner array should be the weekend days

day_parts = [ days_of_the_week[1..5], days_of_the_week.rotate.drop(5) ]

# ### 4. Remove either the weekdays or the weekends
day_parts.pop

# ### 5. Sort the remaining days alphabetically

day_parts.flatten.sort.each do |day|
  puts day
end
