require 'test_helper'

describe 'HyperResource caching' do
  class TestAPI < HyperResource; end

  before do
    @rsrc = TestAPI.new
    @rsrc.adapter.apply(HAL_BODY, @rsrc)
  end

  it 'can be dumped with Marshal.dump' do
    new_rsrc = Marshal.load(Marshal.dump(@rsrc))
    assert new_rsrc.attr1
  end
end
