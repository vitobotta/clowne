# frozen_string_literal: true

module Clowne
  module Declarations
    class Finalize < Base # :nodoc: all
      attr_reader :block

      def initialize(&block)
        raise ArgumentError, "Block is required for finalize" unless block_given?

        @block = block
      end

      def compile(plan)
        plan.add(:finalize, self)
      end
    end
  end
end

Clowne::Declarations.add :finalize, Clowne::Declarations::Finalize
