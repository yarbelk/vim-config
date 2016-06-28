require 'rake'
require './lib/installer'
require './lib/translation'

NIX_FILES = [
  [ 'nvim', '~/.config/nvim'],
  [ 'nvim', '~/.vim'],
  [ 'nvim/init.vim', '~/.vimrc'],
  [ '.gvimrc', '~/.gvimrc'],
]

desc "Install vim configuration and plugin files"
task :default do
  installer = Installer.new(platform_files)
  installer.files.each do |f|
    case
      when f.identical?    then skip_file(f)
      when replace_all?    then auto_link_files(f)
      when f.safe_to_link? then auto_link_files(f)
      else                      prompt_to_link_files(f)
    end
  end
  Rake::Task['dein'].execute
end

desc "Install dein for vim plugins"
task :dein do
  target = "#{platform_files[0][1]}/installer.sh"
  Installer.get_file('https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh', target)
  `sh #{target}`
  puts "opening vim; this should install things. close it when its done (:q<cr>)"
  `vim`
  puts "vim plugins installed."
end

def platform_files
  NIX_FILES
end

def prompt_to_link_files(file)
  print "overwrite? #{file.target} [ynaq]  "
  case $stdin.gets.chomp
    when 'y' then replace(file)
    when 'a' then replace_all(file)
    when 'q' then exit
    else          skip_file(file)
  end
end

def link_files(file)
  puts " => symlinking #{file.source} to #{file.target}"
  file.link
end

def replace(file)
  puts " => replacing #{file.source} with #{file.target}"
  file.force_link
end

def replace_all(file)
  @replace_all = true
  replace(file)
end

def replace_all?
  @replace_all == true
end

def skip_file(file)
  puts " => skipping #{file.target}"
end

def auto_link_files(file)
  file.safe_to_link? ? link_files(file) : replace(file)
end
