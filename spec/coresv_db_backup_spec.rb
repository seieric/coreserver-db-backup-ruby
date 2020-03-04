require 'dotenv/load'

RSpec.describe CoresvDBBackup do
  it "has a version number" do
    expect(CoresvDBBackup::VERSION).not_to be nil
  end

  it "raises ArgumentError when invalid account" do
    expect{ CoresvDBBackup::Client.new( account: nil, server_name: "s99999.xrea.com", api_secret_key: "xxxxxx") }.to raise_error(ArgumentError)
  end

  it "raises ArgumentError when invalid server_name" do
    expect{ CoresvDBBackup::Client.new( account: "xxxxxx", server_name: nil, api_secret_key: "xxxxxx") }.to raise_error(ArgumentError)
  end

  it "raises ArgumentError when invalid api_secret_key" do
    expect{ CoresvDBBackup::Client.new( account: "xxxxxx", server_name: "s99999.xrea.com", api_secret_key: nil) }.to raise_error(ArgumentError)
  end

  before do
    @client = CoresvDBBackup::Client.new( account: ENV['AC'], server_name: ENV['SN'], api_secret_key: ENV['SK'])
  end

  it "raises CoresvDBBackup::APIError" do
    expect{ @client.post("/") }.to raise_error(CoresvDBBackup::APIError)
  end

  it "fetches databases" do
    expect(@client.fetch_databases!.is_a? Hash).to be true
  end

  it "sends request to dump databases" do
    expect(@client.dump_all!.is_a? Hash).to be true
  end

  it "sends request to dump specified databases" do
    expect(@client.dump!([1], "mysql").is_a? Hash).to be true
  end
end
