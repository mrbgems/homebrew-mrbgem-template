# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class MrbgemTemplate < Formula
  desc "A mrbgem template generater"
  homepage "https://github.com/matsumotory/mruby-mrbgem-template"
  head "https://github.com/matsumotory/mruby-mrbgem-template.git"
  # TODO point to origin
  url "https://github.com/matsumotory/mruby-mrbgem-template/archive/v0.3.1.tar.gz"
  sha256 "a0c427c32a9005b97e5bba9386bf73f92516413d562c5bb82203456fb87d527e"
  # depends_on "cmake" => :build

  def install
    system "rake"
    bin.install "mruby/bin/mrbgem-template"
  end

  test do
    system "#{bin}/mrbgem-template", "--version"
  end
end
