##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class TaskQueueStatisticsList < ListResource
      ##
      # Initialize the TaskQueueStatisticsList
      def initialize(version, workspace_sid, task_queue_sid)
        super
        
        # Path Solution
        @solution = {
            workspace_sid: workspace_sid,
            task_queue_sid: task_queue_sid
        }
      end
      
      ##
      # Constructs a TaskQueueStatisticsContext
      def get
        TaskQueueStatisticsContext.new(@version, @solution)
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Taskrouter.V1.TaskQueueStatisticsList>'
      end
    end
  end
end