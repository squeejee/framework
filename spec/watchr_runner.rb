if __FILE__ == $0
  puts "Run with: watchr #{__FILE__}. \n\nRequired gems: watchr rev"
  exit 1
end

# --------------------------------------------------
# Convenience Methods
# --------------------------------------------------
def run(cmd)
  puts(cmd)
  system(cmd)
end

def run_all_specs
  run "rake -s spec"
end

def run_single_spec *spec
  spec = spec.join(' ')
  run "script/spec -O spec/spec.opts #{spec}"
end


# --------------------------------------------------
# Watchr Rules
# --------------------------------------------------
watch( '^spec/spec_helper\.rb'                    ) {     run_all_specs }
watch( '^spec/.*_spec\.rb'                        ) { |m| run_single_spec(m[0]) }
watch( '^app/(.*)\.rb'                            ) { |m| run_single_spec("spec/%s_spec.rb" % m[1]) }
watch( '^lib/(.*)\.rb'                            ) { |m| run_single_spec("spec/other/%s_spec.rb" % m[1] ) }

watch( '.*.feature' )  { |md| 
  puts '=' * 100
  puts "Running #{md[0]}"
  system("cucumber -r features #{md[0]}")
}


# --------------------------------------------------
# Signal Handling
# --------------------------------------------------
# Ctrl-\
Signal.trap('QUIT') do
  puts " --- Running all tests ---\n\n"
  run_all_specs
end
 
# Ctrl-C
Signal.trap('INT') { abort("\n") }

puts "Watching.."