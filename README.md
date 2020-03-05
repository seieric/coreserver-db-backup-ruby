[![Gem Version](https://badge.fury.io/rb/coresv_db_backup.svg)](https://badge.fury.io/rb/coresv_db_backup)
[![Build Status](https://travis-ci.com/seieric/coreserver-db-backup-ruby.svg?branch=master)](https://travis-ci.com/seieric/coreserver-db-backup-ruby)
# CoresvDBBackup
コアサーバー・XREAのデータベースをCronでバックアップするためのスクリプトです。MySQL、PostgreSQLともにデータベース名を指定して、バックアップが可能です。自動バックアップがついていないプランでも、Cronを使うことにより、自動でバックアップを行えます。

## インストール
ターミナルで以下のコマンドを実行してください。

    $ gem install coresv_db_backup

## 使い方
インストールを行ったあとの手順です。

まず、サーバーのコントロールパネルからAPIキーを発行してください。次に、ホームディレクトリ直下にbk_settings.ymlというファイルを作成し、必要な情報を書き込んでください。bk_settings.ymlのサンプルは[こちら](https://github.com/seieric/coreserver-db-backup-ruby/blob/master/bk_settings.yml.example)です。

毎日自動でバックアップするには、こちらのシェルスクリプトをサーバー内の適当な場所に設定して、それをサーバーのCronに登録してください。
シェルスクリプトのサンプルは[こちら](https://github.com/seieric/coreserver-db-backup-ruby/blob/master/backup.sh.example)です。

以下のように、ターミナルで直接実行することもできます。

    $ coresv_db_backup

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/coresv_db_backup. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/seieric/coreserver-db-backup-ruby/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CoresvDbBackup project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/seieric/coreserver-db-backup-ruby/blob/master/CODE_OF_CONDUCT.md).
