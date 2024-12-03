# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class NuzurCli < Formula
  desc "nuzur cli tool"
  homepage "https://nuzur.com/"
  version "0.0.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/nuzur/nuzur-cli/releases/download/v0.0.8/nuzur-cli_Darwin_x86_64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "fe4320b4b3dc33e4acb5f36c833f26f9766c65e91f21be4d7094c877c6101a49"

      def install
        bin.install "nuzur-cli"
      end
    end
    on_arm do
      url "https://github.com/nuzur/nuzur-cli/releases/download/v0.0.8/nuzur-cli_Darwin_arm64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "ada71771646534d2208b02671a4ed0ac8d537524a4656856eb3f47ef950169c9"

      def install
        bin.install "nuzur-cli"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nuzur/nuzur-cli/releases/download/v0.0.8/nuzur-cli_Linux_x86_64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "d424d61c41b765e1c120d867cb0ddab818a556b83e632f415e85a5dd97bf845e"

        def install
          bin.install "nuzur-cli"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nuzur/nuzur-cli/releases/download/v0.0.8/nuzur-cli_Linux_arm64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "4b87673ed5d552fc30bb1878029aaac810aad668c83004e7307001657f08d218"

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
