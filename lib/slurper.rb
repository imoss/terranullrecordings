require 'ostruct'

module Slurper
  FILES = [
    'news_item',
    'release',
    'podcast'
  ]

  def self.slurp
    FILES.each { |file| File.import(file) }
  end

  class File < Struct.new(:name)
    def self.import(name)
      new(name).import
    end

    def associated_class
      name.underscore.classify.constantize
    end

    def destroy_old_records
      associated_class.destroy_all; true
    end

    def file
      ::File.open(file_location)
    end

    def file_location
      "#{Rails.root}/bin/data/#{name}.txt"
    end

    def import
      destroy_old_records && import_new_records
    end

    def import_new_records
      file.read.split('****').each { |i| import_record(i) }
    end

    def import_record(items)
      item = associated_class.new
      items.split('|').each do |attribute|
        key, val = attribute.split(':')
        item.send("#{key.gsub(/\n/, '')}=", val.strip)
      end
      item.save!
    end
  end
end
