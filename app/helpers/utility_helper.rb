module UtilityHelper
  
  def self.display_as_present_if_null(param_date)
     if param_date.nil?
       return "present"
     else
       return param_date  
     end
  end

  def self.display_as_in_progress_if_null(param_date)
     if param_date.nil?
       return "in-progress"
     else
       return param_date  
     end
  end
    
end
