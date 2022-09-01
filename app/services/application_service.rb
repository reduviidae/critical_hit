class ApplicationService
  def self.call(...)
    new(...).call
  end

  def initialize(_args)
    raise NotImplementedError
  end

  def call
    raise NotImplementedError
  end
end
