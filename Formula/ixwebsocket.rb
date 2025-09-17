class Ixwebsocket < Formula
  desc "WebSocket client and server, and HTTP client command-line tool"
  homepage "https://github.com/machinezone/IXWebSocket"

  url "https://github.com/machinezone/IXWebSocket/archive/v11.4.6.tar.gz"
  sha256 "c024334f8e45980836c67008979a884d6dcc5ef067dd2eb1fa7241f4c17ddc32"
  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "#{bin}/ws", "--help"
    system "#{bin}/ws", "send", "--help"
    system "#{bin}/ws", "receive", "--help"
    system "#{bin}/ws", "transfer", "--help"
    system "#{bin}/ws", "curl", "--help"
  end
end
