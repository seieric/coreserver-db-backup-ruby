require ''

module CoresvDBBackup
  class Client
    def initialize( account: , server_name: , api_secret_key: )
      raise ArgumentError "acoount should be String" if account.is_a?(String)
      raise ArgumentError "server_name should be String" if server_name.is_a?(String)
      raise ArgumentError "api_secret_key should be String" if api_secret_key.is_a?(String)

      instance_variable_set("@account", account)
      instance_variable_set("@server_name", server_name)
      instance_variable_set("@api_secret_key", api_secret_key)
    end

    def post(ep, **options)
      params = {
        "account" => @account,
        "server_name" => @server_name,
        "api_secret_key" => @api_secret_key
      }
      options.each do |k, v|
        params[k] = v
      end

      uri = URI.parse("https://#{api_host}#{ep}")
      res = Net::HTTP.post_form(uri, params)

      raise APIError, "The API server returned status code #{res.code}" unless res.code == 200
      raise APIError, "The response provided status code #{result["status_code"]}" unless result["status_code"] == 200

      JSON.parse(res.body)
    end

    :private
    def api_host
      case @server_name
      when /s[0-9]+\.xrea\.com/
        "api.xrea.com"
      when /[0-9A-z]+\.coreserver\.jp/
        "api.coreserver.jp"
      else
        raise ArgumentError "Invalid server_name \"#{server_name}\""
      end
    end
  end
end
