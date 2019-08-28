class ApplicationController < ActionController::Base
  skip_forgery_protection

  private

  def resolve(identifier)
    container[identifier].tap do |obj|
      yield obj if block_given?
    end
  end

  def container
    App::Container
  end
end
