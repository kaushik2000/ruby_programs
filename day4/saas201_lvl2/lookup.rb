  def get_command_line_argument
    # ARGV is an array that Ruby defines for us,
    # which contains all the arguments we passed to it
    # when invoking the script from the command line.
    # https://docs.ruby-lang.org/en/2.4.0/ARGF.html
    if ARGV.empty?
      puts "Usage: ruby lookup.rb <domain>"
      exit
    end
    ARGV.first
  end
  
  # `domain` contains the domain name we have to look up.
  domain = get_command_line_argument
  
  # File.readlines reads a file and returns an
  # array of string, where each element is a line
  # https://www.rubydoc.info/stdlib/core/IO:readlines
  dns_raw = File.readlines("zone")
  
  def parse_dns(dns_raw)
    all_records=dns_raw.map{|each_line| each_line.strip()}.reject{|each_line| each_line.empty? || each_line[0] == "#"}.map{ |each_line| each_line.split(", ")}
    dns_records={}
    all_records.each  do |records|
        about_domain={:type => records[0], :alias => records[2]}
        dns_records[records[1]]=(about_domain)
    end
    return dns_records
end

def resolve(dns_records, lookup_chain, domain)
    if (dns_records[lookup_chain.last()]!=nil) 
      if (dns_records[lookup_chain.last()][:type] == "A")
        lookup_chain.push(dns_records[lookup_chain.last()][:alias]) 
        return lookup_chain
      else
        lookup_chain.push(dns_records[lookup_chain.last()][:alias])
        resolve(dns_records,lookup_chain,domain)  
      end
    else 
      puts "Error: record not found for #{domain}"
      exit
    end
  end
  # To complete the assignment, implement `parse_dns` and `resolve`.
  # Remember to implement them above this line since in Ruby
  # you can invoke a function only after it is defined.
  dns_records = {}
  dns_records = parse_dns(dns_raw)
  lookup_chain = [domain]
  lookup_chain = resolve(dns_records, lookup_chain, domain)
  puts lookup_chain.join(" => ")
  