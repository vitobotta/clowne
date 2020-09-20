# frozen_string_literal: true

module Clowne
  class Resolvers
    module AfterClone # :nodoc: all
      def self.call(source, record, declaration, params:, **_options)
        operation = Clowne::Utils::Operation.current
        operation.add_after_clone(
          proc do
            declaration.block.call(source, record, **params)
          end
        )
        record
      end
    end
  end
end
