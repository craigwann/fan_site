require 'rails_helper'

describe User do
  it do
    should have_many(:songs).
      through(:opinions).
      class_name('Song')
  end
end

describe Song do
  it do
    should have_many(:users).
      through(:opinions).
      class_name('User')
  end
end
