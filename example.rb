# 
# An example class to show what YARD may do.
# 
# @abstract Contains basic methods.
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
  # Sets and returns example's name.
  # 
  # @return [String] current example's name.
  # 
  attr_accessor :name

  # 
  # @return [Number] example's type.
  # 
  attr_reader :type

  # 
  # Sets the example's user.
  # 
  # @param value [String] example's user.
  # 
  attr_writer :user

  # 
  # Create a new instance from string.
  # 
  # @param  str [String] a string representation of the example given from {#to_s}.
  #                      If equals to +nil+ then nothing will be created and +nil+ will
  #                      be returned.
  # 
  # @return [Example]    if parsed successfully.
  # @return [nil]        if not parsed.
  # 
  def self.parse(str)
  end

  # @!method ok?
  # Tests whether the example has +:ok+ type.
  # @return [true, false]

  # @!method error?
  # Tests whether the example has +:error+ type.
  # @return [true, false]
  #
  TYPES.each do |t|
    define_method("#{t}?") do
    end
  end

  # 
  # Creates a new instance.
  # 
  def initialize
  end

  # 
  # Destroys this instance. *Warning*: the instance will be _completely_ destroyed.
  # 
  # @raise  [ExampleError] if the example cannot be destroyed.
  # 
  def destroy(example)
  end

  # 
  # Tests whether another example equals to this.
  # 
  # @param  io [#read]  whatever which responds to #read (e.g. IO).
  # 
  # @return [true]      if data generated successfully.
  # @return [false]     if data failed to generate.
  # 
  def equal?(io)
  end

  # 
  # @return [String] a string representation of the example.
  # 
  # @see .create
  # 
  def to_s
  end

  # 
  # Executes a main action.
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

  private

  def some_private_method
  end

end


# 
# An error used by {Example}.
# 
# @author Phil Tsarik
# 
class ExampleError < RuntimeError
end
