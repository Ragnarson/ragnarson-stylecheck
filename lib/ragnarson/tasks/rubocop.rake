require "ragnarson/stylecheck"
require "fileutils"

namespace :style do
  namespace :rubocop do
    desc "Run RuboCop with auto_correct"
    task :with_auto_correct do
      options = ["--rails", "--auto-correct"]
      options += ["--fail-level", "refactor"]
      options += ["-c", Ragnarson::Stylecheck::RubocopHelpers.config]
      sh "bundle exec rubocop #{options.join(" ")}" do |ok, _res|
        abort "Fix code style errors" unless ok
      end
    end

    desc "Run RuboCop without auto_correct"
    task :without_auto_correct do
      options = ["--rails"]
      options += ["--fail-level", "refactor"]
      options += ["--display-cop-names"]
      options += ["-c", Ragnarson::Stylecheck::RubocopHelpers.config]
      sh "bundle exec rubocop #{options.join(" ")}" do |ok, _res|
        abort "Fix code style errors" unless ok
      end
    end
  end
end

desc "Check codestyle and fix common errors"
task :style do
  Rake::Task["style:rubocop:with_auto_correct"].invoke
end
