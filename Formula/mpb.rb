# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
 class Mpb < Formula
  desc "MIT Photonic-Bands: computation of photonic band structures in periodic media"
  homepage "http://mpb.readthedocs.io/en/latest/"
  url "https://github.com/stevengj/mpb/releases/download/v1.6.1/mpb-1.6.1.tar.gz"
  sha256 "d59f0a54e4fa6ba24640db1f8391c8f1e7e5d2df72cd4beddd803bdc63ad43f7"

  depends_on "openblas"
  depends_on "lapack"
  depends_on "guile"
  depends_on "libctl"
  depends_on "hdf5"
  depends_on "fftw"

  def install
      system "./configure", "--disable-debug",
          "--disable-dependency-tracking",
          "--disable-silent-rules",
          "--enable-shared",
          "LIBS=-ldl",
          "--prefix=#{prefix}"
      system "make", "install" # if this fails, try separate make/make install steps
  end
end
