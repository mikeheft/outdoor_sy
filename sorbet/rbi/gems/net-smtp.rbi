# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true

#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/net-smtp/all/net-smtp.rbi
#
# net-smtp-0.5.0

module Net
end

module Net::SMTPError
  def initialize(response, message: nil); end
  def message; end
  def response; end
end

class Net::SMTPAuthenticationError < Net::ProtoAuthError
  include Net::SMTPError
end

class Net::SMTPServerBusy < Net::ProtoServerError
  include Net::SMTPError
end

class Net::SMTPSyntaxError < Net::ProtoSyntaxError
  include Net::SMTPError
end

class Net::SMTPFatalError < Net::ProtoFatalError
  include Net::SMTPError
end

class Net::SMTPUnknownError < Net::ProtoUnknownError
  include Net::SMTPError
end

class Net::SMTPUnsupportedCommand < Net::ProtocolError
  include Net::SMTPError
end

class Net::SMTP < Net::Protocol
  def address; end
  def any_require_smtputf8(addresses); end
  def auth_capable?(type); end
  def authenticate(user, secret, authtype = nil); end
  def capabilities; end
  def capable?(key); end
  def capable_auth_types; end
  def capable_cram_md5_auth?; end
  def capable_login_auth?; end
  def capable_plain_auth?; end
  def capable_starttls?; end
  def check_auth_args(type, *args, **kwargs); end
  def check_continue(res); end
  def check_response(res); end
  def critical; end
  def data(msgstr = nil, &block); end
  def debug_output=(arg); end
  def disable_ssl; end
  def disable_starttls; end
  def disable_tls; end
  def do_finish; end
  def do_helo(helo_domain); end
  def do_start(helo_domain, user, secret, authtype); end
  def ehlo(domain); end
  def enable_ssl(context = nil); end
  def enable_starttls(context = nil); end
  def enable_starttls_auto(context = nil); end
  def enable_tls(context = nil); end
  def esmtp; end
  def esmtp=(arg0); end
  def esmtp?; end
  def finish; end
  def get_response(reqline); end
  def getok(reqline); end
  def helo(domain); end

  def initialize(address, port = nil, tls: nil, starttls: nil, tls_verify: nil, tls_hostname: nil,
                 ssl_context_params: nil)
  end

  def inspect; end
  def logging(msg); end
  def mailfrom(from_addr); end
  def new_internet_message_io(s); end
  def open_message_stream(from_addr, *to_addrs, &block); end
  def open_timeout; end
  def open_timeout=(arg0); end
  def port; end
  def quit; end
  def rcptto(to_addr); end
  def rcptto_list(to_addrs); end
  def read_timeout; end
  def read_timeout=(sec); end
  def ready(from_addr, *to_addrs, &block); end
  def recv_response; end
  def requires_smtputf8(address); end
  def rset; end
  def self.default_port; end
  def self.default_ssl_context(ssl_context_params = nil); end
  def self.default_ssl_port; end
  def self.default_submission_port; end
  def self.default_tls_port; end

  def self.start(address, port = nil, *args, helo: nil, user: nil, secret: nil, password: nil, authtype: nil, tls: nil, starttls: nil, tls_verify: nil, tls_hostname: nil, ssl_context_params: nil, &block)
  end

  def send_mail(msgstr, from_addr, *to_addrs); end
  def send_message(msgstr, from_addr, *to_addrs); end
  def sendmail(msgstr, from_addr, *to_addrs); end
  def set_debug_output(arg); end
  def ssl?; end
  def ssl_context_params; end
  def ssl_context_params=(arg0); end
  def ssl_socket(socket, context); end
  def start(*args, helo: nil, user: nil, secret: nil, password: nil, authtype: nil); end
  def started?; end
  def starttls; end
  def starttls?; end
  def starttls_always?; end
  def starttls_auto?; end
  def tcp_socket(address, port); end
  def tls?; end
  def tls_hostname; end
  def tls_hostname=(arg0); end
  def tls_verify; end
  def tls_verify=(arg0); end
  def tlsconnect(s, context); end
  def validate_line(line); end
end

class Net::SMTP::Response
  def capabilities; end
  def continue?; end
  def cram_md5_challenge; end
  def exception_class; end
  def initialize(status, string); end
  def message; end
  def self.parse(str); end
  def status; end
  def status_type_char; end
  def string; end
  def success?; end
end

class Net::SMTP::Address
  def address; end
  def initialize(address, *args, **kw_args); end
  def parameters; end
  def to_s; end
end
