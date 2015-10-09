class SafeConstantize
  class IllegalClassToConstantize < RuntimeError; end

  def self.constantize(class_name, allowed)
    raise IllegalClassToConstantize, "Not allowed to constantize: #{class_name}" unless allowed.include?(class_name.to_s)
    class_name.constantize
  end
end
