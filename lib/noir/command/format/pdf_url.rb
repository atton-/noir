require 'uri'

class Noir::Command::Format::PDFURL < Noir::Base::TerminalCommand
  @description = 'get raw URL from link that is searched by google'

  def self.execute *args
    raise 'URL Missing. Please input a link in argument.'if args.empty?

    args.each do |url|
      if URI.regexp.match(url)
        puts URI.decode_www_form(url).find{|a| a.first == 'url'}
      else
        puts 'PDF URL missing'
      end
    end

  end
end

