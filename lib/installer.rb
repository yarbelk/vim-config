require 'net/http'
require 'fileutils'
require 'rake/win32'

class Installer
  attr_accessor :translations, :files

  def initialize(translations)
    @translations = translations
    @files = translations.map { |k,v| Translation.new(k, v) }
  end

  def self.windows?
    Rake::Win32.windows?
  end

  def self.get_file(url, target)
    uri = URI.parse(url)
    if File.exists?(target)
      FileUtils.rm(target)
    end
    File.open(target, "w") do |save_file|
      Net::HTTP.start(uri.host) do |http|
        resp = http.request_get(uri.path)
        save_file.write(resp.body)
      end
    end
  end

  def self.git_clone(repo, target)
    path = translate_path(target)
    FileUtils.rm_rf(path) if File.exists?(path)
    `git clone ""#{repo}"" "#{target}"`
  end

  def self.home_join(*files)
    normalize(File.join(ENV['HOME'], files))
  end

  def self.translate_path(path)
    if path[0].chr === '~'
      path[0] = ENV['HOME']
    end
    normalize(path)
  end

  def self.normalize(path)
    Rake::Win32.normalize(path)
  end
end
