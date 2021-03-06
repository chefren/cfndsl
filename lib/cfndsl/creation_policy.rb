# frozen_string_literal: true

require_relative 'jsonable'

module CfnDsl
  # Handles creation policy objects for Resources
  #
  # Usage
  #   Resource("aaa") {
  #     CreationPolicy('ResourceSignal', { 'Count' => 1,  'Timeout' => 'PT10M' })
  #   }
  class CreationPolicyDefinition < JSONable
    include JSONSerialisableObject

    attr_reader :value

    def initialize(value)
      @value = value
    end
  end
end
