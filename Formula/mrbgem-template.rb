# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class MrbgemTemplate < Formula
  desc "A mrbgem template generater"
  homepage "https://github.com/matsumotory/mruby-mrbgem-template"
  head "https://github.com/matsumotory/mruby-mrbgem-template.git"
  # TODO point to origin
  url "https://github.com/matsumotory/mruby-mrbgem-template/archive/v0.3.0.tar.gz"
  sha256 "f8b9ba25b953311f24babd9b3ed74d3ba95dd241f0c32629e4c723bb935ebf36"
  # depends_on "cmake" => :build

  def install
    system "rake"
    bin.install "mruby/bin/mrbgem-template"
  end

  test do
    system "#{bin}/mrbgem-template", "--version"
  end
end
