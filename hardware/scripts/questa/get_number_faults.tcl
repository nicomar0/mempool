# Find all signals in the design
set signal_list [find signals -r */data_faults]

# Open a file for writing
set file_id [open "data_tag_faults_stats.txt" w]

# Initialize variables for sum and count
set sum 0.0
set count 0

# Loop through each signal in the list
foreach signal $signal_list {
    # Get the value of the signal and store it in a variable
    set signal_value [examine -radix decimal $signal]

    # Print the signal name and value to the file
    puts $file_id "Signal: $signal, Value: $signal_value"

    # Add the value to the sum
    set sum [expr {$sum + $signal_value}]

    # Increment the count
    incr count
}

# Calculate the average
set average [expr {$sum / $count}]

# Print the average to the file
puts $file_id "\nAverage of all values: $average\n\n"

set signal_list [find signals -r */tag_faults]
set sum 0.0
set count 0

foreach signal $signal_list {
    set signal_value [examine -radix decimal $signal]
    puts $file_id "Signal: $signal, Value: $signal_value"
    set sum [expr {$sum + $signal_value}]
    incr count
}
set average [expr {$sum / $count}]

puts $file_id "\nAverage of all values: $average"

# Close the file
close $file_id