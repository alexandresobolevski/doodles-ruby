class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(args)
    @chainring = args.fetch(:chainring)
    @cog = args.fetch(:cog)
    @wheel = args.fetch(:wheel)
  end

  def ratio
    chainring / cog.to_f
  end

  def diameter
    wheel.diameter
  end

  def gear_inches
    ratio * diameter
  end
end


class Wheel
  attr_reader :rim, :tire

  def initialize(args)
    @rim = args.fetch(:rim)
    @tire = args.fetch(:tire)
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end
end

@wheel = Wheel.new({ rim: 26, tire: 1.5 })
puts @wheel.circumference

@gear = Gear.new({ chainring: 52, cog: 11, wheel: @wheel })
puts @gear.gear_inches
puts @gear.ratio
