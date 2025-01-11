class F1Cli < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for fetching Formula 1 data"
  homepage "https://github.com/amateurmonke/f1-cli"
  url "https://github.com/amateurmonke/f1-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0266ccf747d56d49a9dddf816960554ffdd44dc7d8cb53a4ac91df7fc6273815"
  license "MIT"

  depends_on "python@3.11"
  
  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/5b/49/39f10d0f75986c2f465f2f84f32f0a3ef0a5907ea1ebe149a567c8fb35cc/typer-0.9.0.tar.gz"
    sha256 "50922fd79aea2f4751a8e0408ff10d2662bd0c8bbfa84755a699f3bada2978b2"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065cd/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/b3/01/c66a78d11886f8b6d18961c49af6f728b45ebd3f04d15a889e2e29eaf45/rich-13.7.0.tar.gz"
    sha256 "5cb5123b5cf9ee70584244246816e9114227e0b98ad9176eede6ad54bf5403fa"
  end

  resource "prettytable" do
    url "https://files.pythonhosted.org/packages/19/aa/03cbf824daddf7364990139553e86b6fa5b9d4d1fff6e89f124a5f2a2cea/prettytable-3.9.0.tar.gz"
    sha256 "f4ed94803c23073a90620b201965e5dc0bccf1760b7a7eaf3158cab8aaffdf34"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/16/3a/0d26ce356c7465a19c9ea8814b960f8a36c3b0d07c323176620b7b483e44/typing_extensions-4.10.0.tar.gz"
    sha256 "b0abd7c89e8fb96f98db18d86106ff1d90ab692004eb746cf6eda2682f91b3cb"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"f1-cli", "--help"
  end
end
