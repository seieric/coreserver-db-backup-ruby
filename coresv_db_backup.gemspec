require_relative 'lib/coresv_db_backup/version'

Gem::Specification.new do |spec|
  spec.name          = "coresv_db_backup"
  spec.version       = CoresvDbBackup::VERSION
  spec.authors       = ["seieric"]
  spec.email         = ["30688855+seieric@users.noreply.github.com"]

  spec.summary       = %q{コアサーバー・XREAのデータベースをCronでバックアップ}
  spec.description   = %q{コアサーバー・XREAのデータベースをCronでバックアップするためのスクリプトです。MySQL、PostgreSQLともにデータベース名を指定して、バックアップが可能です。自動バックアップがついていないプランでも、Cronを使うことにより、自動でバックアップを行えます。}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
c
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
