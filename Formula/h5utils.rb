 class H5utils < Formula
  desc "a set of utilities for visualization and conversion of scientific data in the free, portable HDF5 format"
  homepage "https://github.com/stevengj/h5utils"
  url "https://github.com/stevengj/h5utils/releases/download/1.13/h5utils-1.13.tar.gz"
  sha256 "7e8b05942908975455e81e12b0dcbc7bc12e9560c29d5203fce3b25d7de6e494"

  depends_on "gcc"
  depends_on "hdf5"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--enable-shared",
                          "--prefix=#{prefix}"
    system "make", "install" # if this fails, try separate make/make install steps
  end
end
