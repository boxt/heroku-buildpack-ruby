# frozen_string_literal: true

require "language_pack/installers/ruby_installer"
require "language_pack/shell_helpers"

class LanguagePack::Installers::RbxInstaller
  include LanguagePack::Installers::RubyInstaller
  include LanguagePack::ShellHelpers

  BASE_URL = "https://rubinius-binaries-rubinius-com.s3.amazonaws.com/ubuntu/14.04/x86_64/"

  def initialize(_stack)
    @fetcher = LanguagePack::Fetcher.new(BASE_URL)
  end

  def fetch_unpack(ruby_version, _install_dir)
    file = "#{ruby_version.version_for_download}.tar.bz2"
    @fetcher.fetch_bunzip2(file)
    FileUtils.mv(Dir.glob("rubinius/#{ruby_version.engine_version}/*"), ".")
    FileUtils.rm_rf("rubinius")
  end
end
