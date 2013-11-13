base_dir = File.dirname(__FILE__)
icons_dir = File.join(base_dir, "icons")
icons = Dir.glob(File.join(icons_dir, "*.png"))

icons.each do |icon|
  icon_file = File.read(icon)
  File.open(File.join(icons_dir, "#{File.basename(icon, '.png')}.icon"), "w") do |f|
    f.puts [icon_file].pack("m")
  end
end
