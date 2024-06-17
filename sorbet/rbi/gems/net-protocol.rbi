# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true

#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/net-protocol/all/net-protocol.rbi
#
# net-protocol-0.2.2

module Net
end

class Net::Protocol
  def self.protocol_param(name, val); end
  def ssl_socket_connect(s, timeout); end
end

class Net::ProtocolError < StandardError
end

class Net::ProtoSyntaxError < Net::ProtocolError
end

class Net::ProtoFatalError < Net::ProtocolError
end

class Net::ProtoUnknownError < Net::ProtocolError
end

class Net::ProtoServerError < Net::ProtocolError
end

class Net::ProtoAuthError < Net::ProtocolError
end

class Net::ProtoCommandError < Net::ProtocolError
end

class Net::ProtoRetriableError < Net::ProtocolError
end

class Net::OpenTimeout < Timeout::Error
end

class Net::ReadTimeout < Timeout::Error
  def initialize(io = nil); end
  def io; end
  def message; end
end

class Net::WriteTimeout < Timeout::Error
  def initialize(io = nil); end
  def io; end
  def message; end
end

class Net::BufferedIO
  def <<(*strs); end
  def LOG(msg); end
  def LOG_off; end
  def LOG_on; end
  def close; end
  def closed?; end
  def continue_timeout; end
  def continue_timeout=(arg0); end
  def debug_output; end
  def debug_output=(arg0); end
  def eof?; end
  def initialize(io, read_timeout: nil, write_timeout: nil, continue_timeout: nil, debug_output: nil); end
  def inspect; end
  def io; end
  def rbuf_consume(len = nil); end
  def rbuf_consume_all; end
  def rbuf_fill; end
  def rbuf_flush; end
  def rbuf_size; end
  def read(len, dest = nil, ignore_eof = nil); end
  def read_all(dest = nil); end
  def read_timeout; end
  def read_timeout=(arg0); end
  def readline; end
  def readuntil(terminator, ignore_eof = nil); end
  def write(*strs); end
  def write0(*strs); end
  def write_timeout; end
  def write_timeout=(arg0); end
  def writeline(str); end
  def writing; end
end

class Net::InternetMessageIO < Net::BufferedIO
  def buffer_filling(buf, src); end
  def dot_stuff(s); end
  def each_crlf_line(src); end
  def each_list_item; end
  def each_message_chunk; end
  def initialize(*, **); end
  def using_each_crlf_line; end
  def write_message(src); end
  def write_message_0(src); end
  def write_message_by_block(&block); end
end

class Net::WriteAdapter
  def <<(str); end
  def initialize(writer); end
  def inspect; end
  def print(str); end
  def printf(*args); end
  def puts(str = nil); end
  def write(str); end
end

class Net::ReadAdapter
  def <<(str); end
  def call_block(str); end
  def initialize(block); end
  def inspect; end
end

module Net::NetPrivate
end
