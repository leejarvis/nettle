require 'net/http'
require 'uri'

require 'nettle/verbs'

module Nettle
  module_function

  include Verbs
  extend Verbs

  def request(method, url, options = {})
    uri = URI.parse(url)
    http = Net::HTTP.new(uri.host, uri.port)
    request = make_request(method, uri, options)
    yield request if block_given?
    response = http.request(request)
    Array(options[:response_extensions]).each { |ext| response.extend(ext) }
    response
  end

  def make_request(method, uri, options)
    klass = Net::HTTP.const_get(method.to_s.downcase.capitalize)
    request = klass.new(uri.request_uri)
    request
  rescue NameError
    raise NameError, "Unknown request method #{method}"
  end

end
