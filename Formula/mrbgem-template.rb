# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class MrbgemTemplate < Formula
  desc "A mrbgem template generater"
  homepage "https://github.com/matsumotory/mruby-mrbgem-template"
  head "https://github.com/matsumotory/mruby-mrbgem-template.git"
  # TODO point to origin
  url "https://github.com/matsumotory/mruby-mrbgem-template/archive/v0.2.1.tar.gz"
  sha256 "b7ea5d26bfad88cea54e6955f556875e2c8405f497bca80bf6e519277f4eeb8d"
  # depends_on "cmake" => :build

  def install
    system "rake"
    bin.install "mruby/bin/mrbgem-template"
  end

  test do
    system "#{bin}/mrbgem-template", "--version"
  end
end
