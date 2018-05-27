class Pcp < Formula
  desc "Performance Co-Pilot is a system performance and analysis framework"
  homepage "https://pcp.io/"
  url "https://github.com/performancecopilot/pcp/archive/4.0.3.tar.gz"
  sha256 "8464fe0bf9cf8aada61d27b2657e3388bebf619473ccaeed32cb32f636a27d2b"
  depends_on "pkg-config" => :build
  depends_on "nss" => :recommended
  depends_on "readline" => :recommended
  depends_on "qt" => :recommended
  depends_on "xz" => :recommended

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    # Run the test with `brew test pcp`.
    system "false"
  end
end
