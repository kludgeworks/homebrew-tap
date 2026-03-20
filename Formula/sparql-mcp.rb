# Generated with JReleaser 1.23.0 at 2026-03-20T19:35:10.44358883Z

class SparqlMcp < Formula
  desc "MCP server to query SPARQL servers"
  homepage "https://github.com/kludgeworks/mcp-server-rdf"
  version "0.2.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.2.2/sparql-mcp-0.2.2-linux-aarch64.zip"
    sha256 "5b4b31b2dc201d7032aaf89ec72876766aa53ec56502df70714c35d0de575beb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.2.2/sparql-mcp-0.2.2-linux-x64.zip"
    sha256 "91807582d7aa0d648df3179141599fa637d888a3dcf5e6acc132a5fafccb91b3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.2.2/sparql-mcp-0.2.2-osx-aarch64.zip"
    sha256 "66cc91e6f6ea4713051da29081acf0f18aa535c11e96c64d0638481509be147d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sparql-mcp" => "sparql-mcp"
  end

  test do
    output = shell_output("#{bin}/sparql-mcp --version")
    assert_match "0.2.2", output
  end
end
