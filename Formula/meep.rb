# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
 class Meep < Formula
  desc "free finite-difference time-domain (FDTD) software for electromagnetic simulations"
  homepage "https://meep.readthedocs.io/en/latest/"
  url "https://energietun.de/meep-1.4.3.tar.gz"
  sha256 "ca1496c547cf8716764bb8824da5bcfc18a346431574d87d3767229592cc6bfe"

  depends_on "libctl"
  depends_on "mpb"
  depends_on "harminv"
  depends_on "hdf5"
  depends_on "lapack"
  depends_on "openblas"
  depends_on "guile"
  depends_on "open-mpi"
  depends_on "h5utils"

  def install
    args = [
        "--disable-debug",
        "--disable-dependency-tracking",
        "--disable-silent-rules",
        "--enable-shared",
        "--with-mpi",
        "PYTHON=python3",
        "--prefix=#{prefix}"
    ]
    system "./configure", *args
    system "make", "install" # if this fails, try separate make/make install steps
  end
end
