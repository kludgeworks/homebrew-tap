# Generated with JReleaser 1.23.0 at 2026-03-20T22:01:29.730954953Z

class SparqlMcp < Formula
  desc "MCP server to query SPARQL servers"
  homepage "https://github.com/kludgeworks/mcp-server-rdf"
  version "0.2.4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.2.4/sparql-mcp-0.2.4-linux-aarch64.zip"
    sha256 "fdef165c61b866e80acca01ec07a4f576ef1277174859f93aab1d08161562425"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.2.4/sparql-mcp-0.2.4-linux-x64.zip"
    sha256 "49be0f25172d154fdcdcbf18f5e05078e289419a4340a52781bb830009a3fdec"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.2.4/sparql-mcp-0.2.4-osx-aarch64.zip"
    sha256 "72cbb925dc90b47600896d110bb8a3da81d96017f87ec84842605c8ef6439dd9"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sparql-mcp" => "sparql-mcp"
  end

  test do
    output = shell_output("#{bin}/sparql-mcp --version")
    assert_match "0.2.4", output
  end
end
