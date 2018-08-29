class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end

  def prepare
    # set up local variables used by rest of prepare method
    pack_essentials
    pack_extras
    pack_gym_clothes
    pack_lunch

  end

  def pack_lunch
    day_of_week = @attributes[:day_of_week]
    # Bring a packed lunch on all weekdays
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    elsif false
      @items << 'snacks'
    end
  end

  def pack_gym_clothes
    day_of_week = @attributes[:day_of_week]
    # Ensure gym shoes are added to backpack if it's a gym day
    # Gotta get to the gym on Monday and Thursdays.
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end
  end

  def pack_essentials
    @items << 'pants'
    @items << 'shirt'
  end

  def pack_extras
    # Ensure appropriate clothing is added to backpack
    forecast = @attributes[:weather]
    if forecast == 'rainy'
      @items << 'umbrella'
    elsif forecast == 'cold'
      @items << 'jacket'
    end
  end

  # Prints a summary packing list for Melinda's backpack
  def packing_list
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
