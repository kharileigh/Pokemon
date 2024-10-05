class Pokemon
  
  # initialise with variables set
  def initialize(name, type, level)
    
    @name = name
    @type = type
    @level = level
  end


  def get_name
    @name
  end

  def get_type
    @type
  end

  def get_level
    @level
  end
end