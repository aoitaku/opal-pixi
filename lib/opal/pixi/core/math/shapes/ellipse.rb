module PIXI
  class Ellipse
    include Native

    def self.new(x_or_native, y, width, height)
      if native?(x_or_native)
        super(x_or_native)
      else
        super(`new PIXI.Ellipse(x_or_native, y, width, height)`)
      end
    end

    alias_native :x
    alias_native :x=
    alias_native :y
    alias_native :y=
    alias_native :width
    alias_native :width=
    alias_native :height
    alias_native :height=
    alias_native :type

    alias_native :clone
    alias_native :contains
    alias_native :get_bounds, :getBounds

  end
end
