##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class IncomingPhoneNumberList < ListResource
      ##
      # Initialize the IncomingPhoneNumberList
      def initialize(version, owner_account_sid)
        super
        
        # Path Solution
        @solution = {
            owner_account_sid: owner_account_sid
        }
        @uri = "/Accounts/#{@solution[:owner_account_sid]}/IncomingPhoneNumbers.json"
        
        # Components
        @local = None
        @mobile = None
        @toll_free = None
      end
      
      ##
      # Reads IncomingPhoneNumberInstance records from the API as a list.
      def read(self, beta=values.unset, friendly_name=values.unset, phone_number=values.unset, limit=nil, page_size=nil)
        @version.read(
            beta,
            friendly_name,
            phone_number,
            limit,
            page_size
        ))
      end
      
      ##
      # Retrieve a single page of IncomingPhoneNumberInstance records from the API.
      def page(self, beta=values.unset, friendly_name=values.unset, phone_number=values.unset, page_token=None, page_number=None, page_size=None)
        params = values.of({
            Beta: beta,
            FriendlyName: friendly_name,
            PhoneNumber: phone_number,
            PageToken: page_token,
            Page: page_number,
            PageSize: page_size,
        })
        @version.page(
            self,
            IncomingPhoneNumberInstance,
            @solution,
            'GET',
            @uri,
            params
        )
      end
      
      ##
      # Create a new IncomingPhoneNumberInstance
      def create(self, api_version=values.unset, friendly_name=values.unset, sms_application_sid=values.unset, sms_fallback_method=values.unset, sms_fallback_url=values.unset, sms_method=values.unset, sms_url=values.unset, status_callback=values.unset, status_callback_method=values.unset, voice_application_sid=values.unset, voice_caller_id_lookup=values.unset, voice_fallback_method=values.unset, voice_fallback_url=values.unset, voice_method=values.unset, voice_url=values.unset, phone_number=values.unset, area_code=values.unset)
        data = values.of({
            PhoneNumber: phone_number,
            AreaCode: area_code,
            ApiVersion: api_version,
            FriendlyName: friendly_name,
            SmsApplicationSid: sms_application_sid,
            SmsFallbackMethod: sms_fallback_method,
            SmsFallbackUrl: sms_fallback_url,
            SmsMethod: sms_method,
            SmsUrl: sms_url,
            StatusCallback: status_callback,
            StatusCallbackMethod: status_callback_method,
            VoiceApplicationSid: voice_application_sid,
            VoiceCallerIdLookup: voice_caller_id_lookup,
            VoiceFallbackMethod: voice_fallback_method,
            VoiceFallbackUrl: voice_fallback_url,
            VoiceMethod: voice_method,
            VoiceUrl: voice_url,
        })
        
        @version.create(
            IncomingPhoneNumberInstance,
            @solution,
            'POST',
            @uri,
            {}
            data
        )
      end
      
      ##
      # Access the local
      def local
        @local ||= LocalList(@version, @solution)
      end
      
      ##
      # Access the mobile
      def mobile
        @mobile ||= MobileList(@version, @solution)
      end
      
      ##
      # Access the toll_free
      def toll_free
        @toll_free ||= TollFreeList(@version, @solution)
      end
      
      ##
      # Constructs a IncomingPhoneNumberContext
      def get(sid)
        IncomingPhoneNumberContext.new(@version, sid, @solution)
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Api.V2010.IncomingPhoneNumberList>'
      end
    end
  end
end