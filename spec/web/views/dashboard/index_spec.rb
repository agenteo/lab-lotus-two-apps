require 'spec_helper'
require_relative '../../../../apps/web/views/dashboard/index'

describe Web::Views::Dashboard::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/dashboard/index.html.erb') }
  let(:view)      { Web::Views::Dashboard::Index.new(template, exposures) }

  it "exposes #foo" do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
