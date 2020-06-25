module Operation
  def self.included(klass)
    klass.extend(ClassMethods)
  end

  module ClassMethods
    def run(*args)
      build(*args).run
    end

    def build(*args)
      # let devs use platform specific classes directly
      if name.split('::').size > 1
        new(*args)
      else
        # gets the STI type of the object in the first keyword argument
        # Ex. "Shopify", "Bigcommerce"
        sti_type = args.first.first.last.class.name.demodulize

        # try to find STI sub class, if not found return itself
        operation = "#{name}::#{sti_type}".safe_constantize || self

        operation.new(*args)
      end
    end
  end
end
