##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'Certificate' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.deployed_devices.fleets('FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                                      .certificates('CYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://preview.twilio.com/DeployedDevices/Fleets/FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Certificates/CYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "CYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "friendly_name",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "fleet_sid": "FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "device_sid": "THaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "thumbprint": "1234567890",
          "date_created": "2016-07-30T20:00:00Z",
          "date_updated": null,
          "url": "https://preview.twilio.com/DeployedDevices/Fleets/FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Certificates/CYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.preview.deployed_devices.fleets('FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                                             .certificates('CYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.deployed_devices.fleets('FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                                      .certificates('CYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://preview.twilio.com/DeployedDevices/Fleets/FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Certificates/CYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.preview.deployed_devices.fleets('FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                                             .certificates('CYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa').delete()

    expect(actual).to eq(true)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.deployed_devices.fleets('FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                                      .certificates.create(certificate_data: 'certificate_data')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'CertificateData' => 'certificate_data', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://preview.twilio.com/DeployedDevices/Fleets/FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Certificates',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "sid": "CYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "friendly_name",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "fleet_sid": "FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "device_sid": "THaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "thumbprint": "1234567890",
          "date_created": "2016-07-30T20:00:00Z",
          "date_updated": null,
          "url": "https://preview.twilio.com/DeployedDevices/Fleets/FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Certificates/CYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.preview.deployed_devices.fleets('FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                                             .certificates.create(certificate_data: 'certificate_data')

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.deployed_devices.fleets('FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                                      .certificates.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://preview.twilio.com/DeployedDevices/Fleets/FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Certificates',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "certificates": [],
          "meta": {
              "first_page_url": "https://preview.twilio.com/DeployedDevices/Fleets/FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Certificates?PageSize=50&Page=0",
              "key": "certificates",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://preview.twilio.com/DeployedDevices/Fleets/FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Certificates?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.preview.deployed_devices.fleets('FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                                             .certificates.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "certificates": [
              {
                  "sid": "CYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "friendly_name": "friendly_name",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "fleet_sid": "FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "device_sid": "THaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "thumbprint": "1234567890",
                  "date_created": "2016-07-30T20:00:00Z",
                  "date_updated": null,
                  "url": "https://preview.twilio.com/DeployedDevices/Fleets/FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Certificates/CYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ],
          "meta": {
              "first_page_url": "https://preview.twilio.com/DeployedDevices/Fleets/FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Certificates?PageSize=50&Page=0",
              "key": "certificates",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://preview.twilio.com/DeployedDevices/Fleets/FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Certificates?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.preview.deployed_devices.fleets('FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                                             .certificates.list()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.deployed_devices.fleets('FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                                      .certificates('CYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://preview.twilio.com/DeployedDevices/Fleets/FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Certificates/CYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "CYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "friendly_name",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "fleet_sid": "FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "device_sid": "THaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "thumbprint": "1234567890",
          "date_created": "2016-07-30T20:00:00Z",
          "date_updated": "2016-07-30T20:00:00Z",
          "url": "https://preview.twilio.com/DeployedDevices/Fleets/FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Certificates/CYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.preview.deployed_devices.fleets('FLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                                             .certificates('CYaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa').update()

    expect(actual).to_not eq(nil)
  end
end