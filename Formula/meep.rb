# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
 class Meep < Formula
  desc "free finite-difference time-domain (FDTD) software for electromagnetic simulations"
  homepage "https://meep.readthedocs.io/en/latest/"
  url "https://github.com/stevengj/meep/releases/download/v1.4.1/meep-1.4.1.tar.gz"
  sha256 "492456349c59e923919fcefed16bb1fab358d23eeae77c720cdaf13130a83672"

  depends_on "gcc"
  depends_on "libctl"
  depends_on "mpb"
  depends_on "harminv"
  depends_on "hdf5"
  depends_on "lapack"
  depends_on "openblas"
  depends_on "guile@2.0.11"
  depends_on "open-mpi"
  depends_on "h5utils"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--enable-shared",
                          "PYTHON=python3",
                          "--prefix=#{prefix}"
    system "make", "install" # if this fails, try separate make/make install steps
  end
end
