
#
# Root module.
#
# @author Phil Tsarik
#
module Root
end

module Root
  #
  # An error used by {Example}.
  #
  # @author Phil Tsarik
  #
  class ExampleError < RuntimeError
  end
end

module Root
  #
  # A base class of examples.
  #
  # @abstract Contains basic methods.
  # @author [Phil Tsarik]
  #
  #
  class BaseExample

    #
    # Executes a main action.
    #
    # @return [Example] self
    #
    def execute
    end

    protected

    #
    # Executes a main action described by descendants.
    # Executed from {#execute}.
    #
    # @abstract Should be overridden.
    #
    def do_action
    end

  end
end

module Root
  #
  # An example class to show what YARD may do.
  #
  # == Execute
  #
  # To execute something use {#execute}.
  #
  # @author Phil Tsarik
  #
  class Example < BaseExample
    include SomeModule
    extend AnotherModule

    #
    # Contains default file name used in {Example}.
    #
    DEFAULT_FILE_NAME = "MyFile.txt"

    #
    # Supported types.
    #
    # @see #ok?
    # @see #error?
    #
    TYPES = [:ok, :error]

    #
    # @return [String] current example's name
    #
    attr_accessor :name

    #
    # @return [Symbol] example's type
    #
    attr_reader :type

    #
    # Sets the example's user.
    #
    # @param  value [String] example's user
    #
    attr_writer :user

    #
    # Create a new instance from string.
    #
    # @example
    #   Example.parse("MyExample") # => new Example instance
    #
    # @example Parse +nil+
    #   Example.parse(nil) # => nil
    #
    # @param  str [String] a string representation of the example given from {#to_s}.
    #                      If equals to +nil+ then nothing will be created and +nil+ will
    #                      be returned.
    #
    # @return [Example]    if parsed successfully
    # @return [nil]        if not parsed
    #
    def self.parse(str)
    end

    #
    # Creates a callback that is called after an example is successfully
    # created.
    #
    # @yield [example]              a block to be called after a docstring is parsed
    # @yieldparam example [Example] a new created {Example} instance
    # @yieldreturn [void]           to apply changes made in this block
    # @yieldreturn [false]          to cancel all changes made in this block
    #
    # @return [void]
    #
    def self.after_create(&block)
    end

    # @!group Dinamic Methods

    # @!method ok?
    #   Tests whether the example has +:ok+ type.
    #   @return [true, false]
    # @!method error?
    #   Tests whether the example has +:error+ type.
    #   @return [true, false]
    #
    TYPES.each do |t|
      define_method("#{t}?") do
      end
    end

    # @!endgroup

    #
    # Creates a new instance.
    #
    # @param  opts [Hash] options of a new example
    # @option opts [Symbol] :type (:ok) type of example
    # @option opts [String] :name       example's name
    #
    def initialize(opts = {})
    end

    #
    # Destroys this instance. *Warning*: the instance will be _completely_ destroyed.
    #
    # @return [void]
    # @raise  [ExampleError] if the example cannot be destroyed
    #
    def destroy(example)
    end

    #
    # Tests whether another example equals to this.
    #
    # @param  io [#read]  whatever which responds to #read (e.g. IO)
    #
    # @return [true]      if data generated successfully
    # @return [false]     if data failed to generate
    #
    def equal?(io = STDIN)
    end

    #
    # @overload to_s
    #   @return [String] a string representation of the example
    #
    # @see .create
    #
    def to_s
    end

    protected

    #
    # @overload do_action
    #   Executes a main action of {Example}.
    #
    def do_action
    end

    private

    def some_private_method
    end

  end
end
