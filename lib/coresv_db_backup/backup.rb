require './client'

module CoresvDBBackup
  class Backup < Client
    def fetch_databases! db_type = "mysql"
      result = post("/v1/db/list", {db_type: db_type})
    end

    def dump!(db_no = [], db_type = "mysql")
      options = {
        "param[no]" => db_no,
        "db_type" => db_type
      }
      result = post("/v1/db/dump")
    end

    def dump_all!
      post("/v1/db/dump_all")
    end
  end
end
