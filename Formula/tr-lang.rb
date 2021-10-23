# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TrLang < Formula
  desc "A programming language that aims to bring syntax closer to Turkish" 
  homepage "https://github.com/kaiserthe13th/tr-lang"
  url "https://github.com/kaiserthe13th/tr-lang/archive/refs/tags/tr-lang-0.2.3.tar.gz"
  sha256 "e6b6525d5fccabdf30d90fe1fe9c3d21971ebdab8e7d90d8920934773abe6dcd"
  version "0.2.3"
  license "MIT"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/tr-lang"
  end
end
