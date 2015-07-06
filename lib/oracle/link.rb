module Oracle
  module Link

    def create_database_link(link_name, config_name)
      execute_sql "create database link #{link_name} #{connection_string(config_name)}"
    end

    def drop_database_link(link_name)
	    execute_sql "drop database link #{link_name}" if obj_exists?('user_db_links', 'db_link', link_name)
	  end

  end
end
