# Generated with JReleaser 1.26.0 at 2026-10-15T17:14:33.926493764Z

class SparqlMcp < Formula
  desc "MCP server to query SPARQL servers"
  homepage "https://github.com/kludgeworks/mcp-server-rdf"
  version "0.4.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.4.0/sparql-mcp-0.4.0-linux-aarch64.zip"
    sha256 "10e41faf336552b58d3f416f137bf1b5ed1b2ca0e480e91948b52fe844af143d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.4.0/sparql-mcp-0.4.0-linux-x64.zip"
    sha256 "4d660a82b4ce3bbfa13b8a1e1dc5b6f5ca38e2cbc13d82db64af5282942ce952"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.4.0/sparql-mcp-0.4.0-osx-aarch64.zip"
    sha256 "0c2e28ae428b820f84017e77966451e3bd9abda340894f1bc9515f48840c9bf4"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sparql-mcp" => "sparql-mcp"
  end

  test do
    output = shell_output("#{bin}/sparql-mcp --version")
    assert_match "0.4.0", output
  end
end
