module Spec
  module Support
    module Hash
      def only(hash, *keys)
        hash.select { |key, _| keys.include?(key) }.to_h
      end

      def except(hash, *keys)
        hash.reject { |key, _| keys.include?(key) }.to_h
      end
    end
  end
end
