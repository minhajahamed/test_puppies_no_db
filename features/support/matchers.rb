 RSpec::Matchers.define :have_error_message do |message|
   match do |page|
     page.error_messages.include? message
   end
   failure_message_for_should do |page|
      "Expected '#{page.error_messages}' to include '#{message}'"
   end

   failure_message_for_should_not do |page|
      "Expected '#{page.error_messages}' to not include '#{message}'"
   end
 end

 RSpec::Matchers.define :be_on_or_near_the_time do |expected|
    match do |actual|
      started = expected - 3
      finished = expected + 3
      actual > started and actual < finished
      end

    failure_message_for_should do |actual|
      "Expected '#{actual}' to be within 3 seconds of '#{expected}'"
      end

    failure_message_for_should_not do |actual|
      "Expected '#{actual}' to not be within 3 seconds of '#{expected}'"
      end
end

