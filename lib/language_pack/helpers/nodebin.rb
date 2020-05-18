# frozen_string_literal: true

require "json"

class LanguagePack::Helpers::Nodebin
  NODE_VERSION = "10.20.1"
  YARN_VERSION = "1.22.4"

  def self.hardcoded_node_lts
    {
      "number" => NODE_VERSION,
      "url" => "https://s3.amazonaws.com/heroku-nodebin/node/release/linux-x64/node-v#{NODE_VERSION}-linux-x64.tar.gz"
    }
  end

  def self.hardcoded_yarn
    {
      "number" => YARN_VERSION,
      "url" => "https://s3.amazonaws.com/heroku-nodebin/yarn/release/yarn-v#{YARN_VERSION}.tar.gz"
    }
  end

  def self.node_lts
    hardcoded_node_lts
  end

  def self.yarn
    hardcoded_yarn
  end
end
