module Oracle
  module Alter

    def create_synonym(synonym, full_name)
      execute_sql "create synonym #{synonym} for #{full_name}"
    end

    def drop_synonym(synonym)
      execute_sql "drop synonym #{synonym}" if obj_exists?('user_synonyms', 'synonym_name', synonym)
    end

    def create_view(view_name, query)
      execute_sql "create view #{view_name} as #{query}"
    end

    def drop_view(view_name)
      execute_sql "drop view #{view_name}" if obj_exists?('user_views', 'view_name', view_name)
    end
  
  end  
end  