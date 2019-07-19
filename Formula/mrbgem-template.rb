# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class HomebrewMrbgemTemplate < Formula
  desc "A mrbgem template generater"
  homepage "https://github.com/matsumotory/mruby-mrbgem-template"
  head "https://github.com/matsumotory/mruby-mrbgem-template.git"
  url "https://github.com/mrbgems/homebrew-mrbgem-template/releases/download/0.1.0/mrbgem-template-0.1.0.tar.gz"
  sha256 "aa0dec44df5ca6375ef6274e9309b618458fd8bdb338468fd2ab2607660c4f94"
  # depends_on "cmake" => :build

  def install
    system "rake"
    bin.install "mruby/bin/mrbgem-template"
  end

  test do
    system "#{bin}/mrbgem-template", "--version"
  end
end
