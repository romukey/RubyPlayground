require 'rubygems'
require 'pry'
require '../v2/util/slack_notifier'
require '../v2/calendar_item'

# Slack
class SlackForNotification

  STARTER_NOTIFICATION      = '明日のシフトはこちら！'
  HOPING_REACTION_STATEMENT = '`こちらにメンションがついている方は今日23時までに必ず本通知にリアクション` をお願いします!'
  NO_SHIFT_STATEMENT        = '明日のシフトはありません！'
  BIRTHDAY_STATEMENT        = 'そして、なんと明日誕生日のメンターが!!! そのメンターは...!!!'
  CELERATION_ENCOURAGEMENT_STATEMENT = '明日会ったときに、「誕生日おめでとう」と言おう！'

  @@notifier_instance = SlackNotifier.instance

  class << self
    def sends_starter_notification
      @@notifier_instance.post(text: STARTER_NOTIFICATION)
      @@notifier_instance.post(text: HOPING_REACTION_STATEMENT)
    end

    def sends_shift_notification(mention:, calendar_name:, start_time:)
      notification = "<#{mention}> : #{calendar_name} : #{start_time}"
      @@notifier_instance.post(text: notification)
    end

    def sends_birthday_notification(mention:, calendar_name:)
      @@notifier_instance.post(text: BIRTHDAY_STATEMENT)
      @@notifier_instance.post(text: "<#{mention}>#{calendar_name}")
      @@notifier_instance.post(text: CELERATION_ENCOURAGEMENT_STATEMENT)
    end

    def sends_no_shift_notification
      @@notifier_instance.post(text: NO_SHIFT_STATEMENT)
    end
  end
end
