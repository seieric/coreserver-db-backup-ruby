require 'net/https'
require 'uri'
require 'json'
require "coresv_db_backup/version"
require "coresv_db_backup/backup"
require "coresv_db_backup/client"

module CoresvDBBackup
  class APIError < StandardError
    def initialize msg = ""
      super
    end
  end
  # Your code goes here...
end
