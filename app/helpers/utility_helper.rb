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

  def self.years_experience(param_year)
      if (param_year.nil?)
        return "(none)"
      else
        if (param_year > 1)
            return "#{param_year} years"
        elsif (param_year <= 1)
            return "#{param_year} year"
        else
            return "(none)"       
        end
      end  
  end
  
  def self.check_box(params_checked)
    if params_checked
      return "fa-check-square-o"
    else
      return "fa-square-o"
    end
  end

    
end
