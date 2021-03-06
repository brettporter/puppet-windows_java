module Puppet::Parser::Functions
  newfunction(:filename, :type  => :rvalue, :doc => <<-EOS
Returns the filename of a path
  EOS
  ) do |args|
    raise(Puppet::ParseError, "filename(): Wrong number of arguments " +
    "given (#{args.size} for 1") if args.size != 1
  path = args[0]
  return File.basename(path)
  end
end