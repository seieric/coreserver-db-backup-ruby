module CoresvDBBackup
  class Backup
    def fetch_databases! db_type = "mysql"
      result = post("/v1/db/list", {db_type: db_type})
    end

    def dump!(db_no = [], db_type = "mysql")
      options = {
        "db_type" => db_type,
        "param[no]" => db_no
      }
      result = post("/v1/db/dump", options)
    end

    def dump_all!
      post("/v1/db/dump_all")
    end
  end
end
