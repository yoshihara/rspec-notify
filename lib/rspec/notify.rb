require 'ruby-growl'
require 'rspec/core/formatters/progress_formatter'

module RSpec
  class Notify < RSpec::Core::Formatters::ProgressFormatter
    def initalize
      @summary = ""
    end

    def colorise_summary(summary)
      super
      @summary = summary
    end

    def dump_summary(duration, example_count, failure_count, pending_count)
      super
      success_count = example_count - failure_count
      icon = read_icon(success_count, failure_count, pending_count)

      title = "#{(success_count / example_count.to_f * 100).round(2)}% passed"
      g = Growl.new "localhost", "rspec-growl"
      g.add_notification("notification", "rspec Notification", icon)
      g.notify "notification", title, @summary
    end

    private

    def read_icon(success, failure, pending)
      icon_path = File.join(File.dirname(__FILE__), "..", "..", "icons")
      if failure > 0
        icon_name = "failure"
      elsif pending > 0
        icon_name = "pending"
      else
        icon_name = "success"
      end
      File.read(File.join(icon_path, "#{icon_name}.icon")).unpack("m").first
    end
  end
end
