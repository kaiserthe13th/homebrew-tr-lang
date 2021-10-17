# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TrLang < Formula
  desc "A programming language that brings syntax closer to Turkish" 
  homepage "https://github.com/kaiserthe13th/tr-lang"
  url "https://github.com/kaiserthe13th/tr-lang/archive/refs/tags/tr-lang-0.1.3.tar.gz"
  sha256 "a5026340cadaba61e4f44cbddcdbe81b0de3c09f6be1f49396a3fe25a7686e2b"
  licence "MIT"
  version "0.1.3"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/tr-lang"
  end
end
