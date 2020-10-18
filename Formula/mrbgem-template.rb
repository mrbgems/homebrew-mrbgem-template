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
  
  patch do
    url "https://github.com/matsumotory/mruby-mrbgem-template/commit/d86552189456c11d2fd09eed8d2be502fb5497a5.patch"
    sha256 "b2bdd10b1b4ffeff59d06ee1033fb1d82aab9404854bb1a56afff72376b4f11c"
  end
  
  patch do
    url "https://github.com/matsumotory/mruby-mrbgem-template/commit/ed259f30a7c2fac2d15b136b8a2a974f5b8d4fa0.patch"
    sha256 "fab4854ae22d25c90555fa20aa9f4274d354e8760b1791ab144b3ed4ecac1be2"
  end

  test do
    system "#{bin}/mrbgem-template", "--version"
  end
end
