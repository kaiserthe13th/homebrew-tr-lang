# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TrLang < Formula
  desc "A programming language that aims to bring syntax closer to Turkish" 
  homepage "https://github.com/kaiserthe13th/tr-lang"
  url "https://github.com/kaiserthe13th/tr-lang/archive/refs/tags/tr-lang-0.2.0.tar.gz"
  sha256 "1f7b515ad035109da36e0ce1fbf7303f81002b154cc303c80e37463852b05a7d"
  version "0.2.0"
  license "MIT"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/tr-lang"
  end
end
