# infect.sh
# @author Nat Welch (@icco)
#
# A rewrite of my oldschool script but in Ruby. Based off of @holman/dotfiles
# initially. This script can be run multiple times, it in theory will be nice
# to your home dir.

require 'rake'

task :default => 'infect'

desc "Sort and clean the vim dictionary."
task :vim do
  Kernel.exec("cat link/vim/spell/en.utf-8.add | sort -if | uniq > t && mv t link/vim/spell/en.utf-8.add && git diff")
end

desc "Test to make sure everything works ok."
task :test do
  if RUBY_VERSION < "1.9"
    puts "Ruby needs to be at least 1.9 for this script."
    Kernel.exit -1
  end
end

desc "Hook our dotfiles into system-standard positions."
task :infect => [:test, :structure] do

  # The files we want to link the roots.
  Dir.glob('link/**').each do |linkable|
    file = linkable.split('/').last
    NatFile.link(linkable, "#{ENV["HOME"]}/.#{file}")
  end

  # The files we want to link the leafs
  Dir.glob('specific/**/*').each do |linkable|
    file = linkable.split('/')
    file.delete_at 0
    file = "#{ENV["HOME"]}/.#{file.join('/')}"

    if !File.directory? linkable
      dir = File.dirname file
      if !Dir.exists? dir
        FileUtils.mkdir_p dir
      end

      NatFile.link(linkable, file)
    end
  end

  # Link all of bin.
  Dir.glob('bin/*').each do |linkable|
    NatFile.link(linkable, "#{ENV["HOME"]}/#{linkable}")
  end
end

desc "Build wanted directory structure."
task :structure => :test do
  dirs = [ 'Projects', 'bin', 'tmp' ].map {|dir|
    "#{ENV["HOME"]}/#{dir}"
  }.keep_if {|dir| !File.exist? dir }

  FileUtils.mkdir dirs
end

class NatFile
  # Function to do the actual linking.
  def NatFile.link file, target
    overwrite = false
    backup = false

    if File.exists?(target) || File.symlink?(target)
      # Backup
      `cp -r "#{target}" "#{target}.#{Time.now.to_i}.backup"`
      `mv "#{target}.#{Time.now.to_i}.backup" "$HOME/tmp/"`

      # Overwrite
      FileUtils.rm_rf(target)
    end

    # Do the link...
    `ln -s "$PWD/#{file}" "#{target}"`
  end
end
