# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TrLang < Formula
  desc "A programming language that aims to bring syntax closer to Turkish" 
  homepage "https://github.com/kaiserthe13th/tr-lang"
  url "https://github.com/kaiserthe13th/tr-lang/archive/refs/tags/tr-lang-0.2.2.tar.gz"
  sha256 "364e868ed1fef4653b90b351dd07a38e835fa71e29ab489e64a5dc211f646973"
  version "0.2.0"
  license "MIT"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/tr-lang"
  end
end
