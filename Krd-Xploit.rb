require 'xploit'

puts "Enter The RHOST => "
RHOST = gets
puts "Enter La RPORT => "
RPORT = gets

if ARGV[0] == "r"
  host = 'remote.host'
  port = 9999

end

Sock.open(host, port) do |s|
  s.debug = true
  puts .recvline

  s.endline("Shell Code Dude")

  s.shell


end
