module Oracle
  module Base

    def connection_string(config_name="")
      config_name = (config_name.blank? ? "#{Rails.env}" : "#{config_name}_#{Rails.env}")
      config = ActiveRecord::Base.configurations["#{config_name}"]
      raise ArgumentError, "#{db_config_key} configuration is missing in config/database.yml file" if config.nil?
      "connect to #{config['username']} identified by #{config['password']} using '#{config['database']}'"
    end

    def execute_sql(sql)
      puts "Executing: #{sql}"
      ActiveRecord::Base.connection.execute sql
    end

    def obj_exists?(obj_table, column_name, obj_name)
      execute_sql("select * from #{obj_table} WHERE lower(#{column_name}) LIKE '%#{obj_name.downcase}%'").fetch
    end

  end  
end