require 'ostruct'

module Slurper
  FILES = [
    'news_item',
    'release',
    'podcast'
  ]

  RECORD_SPLITTER = '****'
  ATTRIBUTE_SPLITTER = '|'
  KEY_VALUE_SPLITTER = ':'

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
      associated_class.destroy_all
    end

    def file_location
      "#{Rails.root}/bin/data/#{name}.txt"
    end

    def import
      destroy_old_records && import_new_records
    end

    def import_new_records
      raw_records.reverse.map { |r| Record.create!(associated_class, r) }
    end

    def input
      ::File.open(file_location).read
    end

    def raw_records
      input.split RECORD_SPLITTER
    end

    class Record < Struct.new(:associated_class, :raw)
      def self.create!(associated_class, raw)
        new(associated_class, raw).create!
      end

      def attributes
        raw_attributes.inject({}) do |hash, attr|
          key, *val = attr.split(KEY_VALUE_SPLITTER)
          hash.merge(key.strip => val.join(KEY_VALUE_SPLITTER).strip)
        end
      end

      def raw_attributes
        raw.split(ATTRIBUTE_SPLITTER)
      end

      def create!
        associated_class.create!(attributes)
      end
    end
  end
end
