require "#{File.dirname(__FILE__)}/oracle/base"
require "#{File.dirname(__FILE__)}/oracle/alter"
require "#{File.dirname(__FILE__)}/oracle/link"

ActiveRecord::Migration.extend(Oracle::Alter)
ActiveRecord::Migration.extend(Oracle::Link)
