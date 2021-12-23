# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Notifier < Formula
  desc "Tiny helper for publishing notifications on different platforms"
  homepage "https://github.com/hupe1980/notifier"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/notifier/releases/download/v0.0.2/notifier_Darwin_x86_64.tar.gz"
      sha256 "97d12ee445477406e26f02af47704316724793e56a228cd0dca740c675f2a495"

      def install
        bin.install "notifier"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hupe1980/notifier/releases/download/v0.0.2/notifier_Darwin_arm64.tar.gz"
      sha256 "eaa4a8872f6475421a0dff23f6d4133e0defbd2e4005809d72a27730f30783b8"

      def install
        bin.install "notifier"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/notifier/releases/download/v0.0.2/notifier_Linux_arm64.tar.gz"
      sha256 "b79066b8770c7c8731e843cd4cb78ee75599f21ebd4d123959f8caee16e41ef8"

      def install
        bin.install "notifier"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/notifier/releases/download/v0.0.2/notifier_Linux_x86_64.tar.gz"
      sha256 "0f47fee56db0aa844d81857e3324e9f2e142c3b84b88ff198e42f8d35a9aabfb"

      def install
        bin.install "notifier"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/notifier/releases/download/v0.0.2/notifier_Linux_armv6.tar.gz"
      sha256 "746670f7374dc04d56ae77b6f8598c03b34b71b0108668f6f50c88b5986ea997"

      def install
        bin.install "notifier"
      end
    end
  end

  test do
    system "#{bin}/notifier -v"
  end
end
