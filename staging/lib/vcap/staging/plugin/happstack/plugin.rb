class HappstackPlugin < StagingPlugin
  def framework
    'happstack'
  end

  def resource_dir
    File.join(File.dirname(__FILE__), 'resources')
  end

  def stage_application
    Dir.chdir(destination_directory) do
      create_app_directories
      copy_source_files
      create_startup_script
    end
  end

  def start_command
    "/usr/bin/runhaskell Main.hs"
  end

  private

  def startup_script
  end

end
