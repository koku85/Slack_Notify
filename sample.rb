require "slack-notify"
require 'clockwork'
include Clockwork
require 'active_support/time'
module Clockwork
  sample = SlackNotify::Client.new(webhook_url: 'https://hooks.slack.com/services/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')
    every(3.minutes, 'clock') do
      sample.notify("クロックワーク！！", "#slackの自動botを作成")
    end
end
