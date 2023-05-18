# Ask user to select a folder in the current directory
folders = Dir.glob("*/").map { |folder| folder.chomp("/") }

puts "Folders in current directory:"
folders.each_with_index { |folder, index| puts "#{index + 1}. #{folder}" }

puts "Enter the number of the folder you want to select:"
index = gets.chomp.to_i - 1

if index.between?(0, folders.size - 1)
    selected_folder = folders[index]
else
    puts "Invalid folder secection"
    exit
end

# Ask user to select a file in the selected folder
markdown_files = Dir.glob("#{selected_folder}/**/*.md")

puts "Markdown files in #{selected_folder}:"
markdown_files.each_with_index { |file, index| puts "#{index + 1}. #{File.basename(file)}" }

puts "Enter the number of the file you want to extract:"
index = gets.chomp.to_i - 1

if index.between?(0, markdown_files.size - 1)
    input_file = markdown_files[index]
else
    puts "Invalid file secection"
    exit
end

# Ask user to enter the name of the output file
puts "Enter the name of the output file:"
output_file = gets.chomp.empty? ? "Key Points.txt" : gets.chomp
output_file += ".txt" if output_file.end_with?(".txt") == false

# Extract the content
do_list = []
memorize_list = []

do_pattern = /^\*\*`?Do:`?\*\*\s*/
mx_pattern = /^\*\*`?Mz:`?\*\*\s*/

File.foreach(input_file) do |line|
    do_list << line.gsub(do_pattern, " ") if line.match?(do_pattern)
    memorize_list << line.gsub(mx_pattern, " ") if line.match?(mx_pattern)
end

File.open(output_file, "w") do |output|
    output.puts("Do:")
    output.puts(do_list)

    output.puts

    output.puts("Memorize:")
    output.puts(memorize_list)
end

puts "Extraction successful!"
