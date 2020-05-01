# frozen_string_literal: true

require "json"

class LanguagePack::Helpers::Nodebin
  NODE_LTS = "10.20.0"
  YARN = "1.22.4"

  def self.hardcoded_node_lts
    {
      "number" => version,
      "url" => "https://s3.amazonaws.com/heroku-nodebin/node/release/linux-x64/node-v#{NODE_LTS}-linux-x64.tar.gz"
    }
  end

  def self.hardcoded_yarn
    {
      "number" => version,
      "url" => "https://s3.amazonaws.com/heroku-nodebin/yarn/release/yarn-v#{YARN}.tar.gz"
    }
  end

  def self.node_lts
    hardcoded_node_lts
  end

  def self.yarn
    hardcoded_yarn
  end
end
