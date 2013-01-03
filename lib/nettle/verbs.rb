module Nettle
  module Verbs
    def get(url, options = {}, &block)
      request(:Get, url, options, &block)
    end

    def head(url, options = {}, &block)
      request(:Head, url, options, &block)
    end

    def post(url, params = {}, options = {}, &block)
      request(:Post, url, options) do |req|
        req.set_form_data params
        yield req if block_given?
      end
    end

    def put(url, params = {}, options = {}, &block)
      request(:Put, url, options) do |req|
        req.set_form_data params
        yield req if block_given?
      end
    end

    def patch(url, params = {}, options = {}, &block)
      request(:Patch, url, options) do |req|
        req.set_form_data params
        yield req if block_given?
      end
    end

    def delete(url, options = {}, &block)
      request(:Delete, url, options, &block)
    end

    def trace(url, options = {}, &block)
      request(:Trace, url, options, &block)
    end

    def options(url, options = {}, &block)
      request(:Options, url, options, &block)
    end
  end
end
