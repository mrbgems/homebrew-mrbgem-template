# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class MrbgemTemplate < Formula
  desc "A mrbgem template generater"
  homepage "https://github.com/matsumotory/mruby-mrbgem-template"
  head "https://github.com/matsumotory/mruby-mrbgem-template.git"
  # TODO point to origin
  url "https://github.com/udzura/mruby-mrbgem-template/archive/v0.1.0.tar.gz"
  sha256 "3b13e47f007c1940b9144cac061b434e79e9863c2a88f563aab47ad567442d4c"
  # depends_on "cmake" => :build

  def install
    system "rake"
    bin.install "mruby/bin/mrbgem-template"
  end

  test do
    system "#{bin}/mrbgem-template", "--version"
  end
end
