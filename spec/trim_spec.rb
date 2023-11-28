require_relative '../lib/trim'

RSpec.describe(MediaTrim) do
  it 'does nothing' do
    media_trim = described_class.new
    media_trim.set_defaults
    media_trim.fname = 'demo/demo.mp4'
    media_trim.copy_filename = 'demo/trim.demo.mp4'
    media_trim.start = '1'
    media_trim.interval = ['-ss', @start, '-to', '2']
    expect(true).to be_truthy
  end
end
