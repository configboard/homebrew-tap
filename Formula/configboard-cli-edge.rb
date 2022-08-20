# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ConfigboardCliEdge < Formula
  desc "configboard-cli"
  homepage "https://github.com/configboard/configboard-cli"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/configboard/configboard-cli/releases/download/v0.3.0/configboard-cli_v0.3.0_darwin_arm64.tar.gz"
      sha256 "9eb8df3155609dd1a43ac30573cc169c60dbada77750d717878523a966fd1d4d"

      def install
        bin.install "configboard-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/configboard/configboard-cli/releases/download/v0.3.0/configboard-cli_v0.3.0_darwin_amd64.tar.gz"
      sha256 "fa48b926662c60843cade4b00e9281cf86d2e8d026784efc425c9a1e52cb75d2"

      def install
        bin.install "configboard-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/configboard/configboard-cli/releases/download/v0.3.0/configboard-cli_v0.3.0_linux_arm64.tar.gz"
      sha256 "c47795fdb03e62f6060703dc82f32e34be37e9e767ba658a864125ada39e0084"

      def install
        bin.install "configboard-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/configboard/configboard-cli/releases/download/v0.3.0/configboard-cli_v0.3.0_linux_amd64.tar.gz"
      sha256 "d75e6c0a672ee45a616f329418e682fad3fda2f5d9091464920004438f196919"

      def install
        bin.install "configboard-cli"
      end
    end
  end

  conflicts_with "configboard-cli"

  def caveats; <<~EOS
    How to use this binary: https://github.com/configboard/configboard-cli
  EOS
  end

  test do
    system "#{bin}/configboard-cli version"
  end
end
