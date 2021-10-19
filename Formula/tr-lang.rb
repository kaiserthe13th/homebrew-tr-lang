# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TrLang < Formula
  desc "A programming language that aims to bring syntax closer to Turkish" 
  homepage "https://github.com/kaiserthe13th/tr-lang"
  url "https://github.com/kaiserthe13th/tr-lang/archive/refs/tags/tr-lang-0.1.5.tar.gz"
  sha256 "64904786d311ecd362fe8cd3ff33ecd56a9f0cda342b84db6e00b0e4bf31b48c"
  version "0.1.5"
  license "MIT"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/tr-lang"
  end
end
