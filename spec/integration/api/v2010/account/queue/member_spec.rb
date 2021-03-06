##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'Member' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                       .queues('QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                       .members('CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_enqueued": "Tue, 07 Aug 2012 22:57:41 +0000",
          "position": 1,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
          "wait_time": 143
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                              .queues('QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                              .members('CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                       .queues('QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                       .members('CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa').update(url: 'https://example.com', method: 'GET')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'Url' => 'https://example.com', 'Method' => 'GET', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json',
        data: values,
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_enqueued": "Tue, 07 Aug 2012 22:57:41 +0000",
          "position": 1,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
          "wait_time": 143
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                              .queues('QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                              .members('CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa').update(url: 'https://example.com', method: 'GET')

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                       .queues('QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                       .members.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members.json',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members.json?Page=0&PageSize=50",
          "last_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members.json?Page=0&PageSize=50",
          "next_page_uri": null,
          "num_pages": 1,
          "page": 0,
          "page_size": 50,
          "previous_page_uri": null,
          "queue_members": [
              {
                  "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_enqueued": "Tue, 07 Aug 2012 22:57:41 +0000",
                  "position": 1,
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
                  "wait_time": 124
              }
          ],
          "start": 0,
          "total": 1,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                              .queues('QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                              .members.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members.json?Page=0&PageSize=50",
          "last_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members.json?Page=0&PageSize=50",
          "next_page_uri": null,
          "num_pages": 1,
          "page": 0,
          "page_size": 50,
          "previous_page_uri": null,
          "queue_members": [],
          "start": 0,
          "total": 1,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                              .queues('QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                              .members.list()

    expect(actual).to_not eq(nil)
  end
end