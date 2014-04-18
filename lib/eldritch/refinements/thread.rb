module Eldritch
  module Refinements
    refine Thread do
      attr_writer :group
      attr_accessor :task

      def group
        @group ||= Eldritch::NilGroup.new
      end

      def in_group?
        !group.nil?
      end
    end
  end
end