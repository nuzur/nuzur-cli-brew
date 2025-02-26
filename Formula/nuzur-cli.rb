# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class NuzurCli < Formula
  desc "nuzur cli tool"
  homepage "https://nuzur.com/"
  version "0.0.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nuzur/nuzur-cli/releases/download/v0.0.16/nuzur-cli_Darwin_x86_64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "3f366f01ab33f55cb4b57fe8f097b5da62d5dee9ae77d2c53e3b4fc4a0af754c"

      def install
        bin.install "nuzur-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nuzur/nuzur-cli/releases/download/v0.0.16/nuzur-cli_Darwin_arm64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "431c482ad6831e7d9b22a3ff9ae557e6c4360ff4934e3a5e3bc323b4aecff576"

      def install
        bin.install "nuzur-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nuzur/nuzur-cli/releases/download/v0.0.16/nuzur-cli_Linux_x86_64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "95f942fb356f0e50529ab0d35a53dd738a6ab2c11159cfce629fe00f4b992474"

        def install
          bin.install "nuzur-cli"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nuzur/nuzur-cli/releases/download/v0.0.16/nuzur-cli_Linux_arm64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "357d5315f32759b5e0656d581f56c146fb6ee86f7fd02b944721379c739b119c"

        def install
          bin.install "nuzur-cli"
        end
      end
    end
  end

  def caveats
    <<~EOS
      How to use this binary
    EOS
  end
end
