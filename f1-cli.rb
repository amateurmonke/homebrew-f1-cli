class F1Cli < Formula
    include Language::Python::Virtualenv
  
    desc "CLI tool for fetching Formula 1 data"
    homepage "https://github.com/amateurmonke/f1-cli"
    url "https://github.com/amateurmonke/f1-cli/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "0266ccf747d56d49a9dddf816960554ffdd44dc7d8cb53a4ac91df7fc6273815"
    license "MIT"
  
    depends_on "python@3.11"
  
    resource "typer" do
      url "https://files.pythonhosted.org/packages/5b/49/39f10d0f75986c2f465f2f84f32f0a3ef0a5907am8b3c99014dd667766/typer-0.9.0.tar.gz"
      sha256 "50922fd79aea2f4751a8e0408ff10d2662bd0c8bbfa84755a699f3bada2978b2"
    end
  
    resource "requests" do
      url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c/requests-2.31.0.tar.gz"
      sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
    end
  
    resource "rich" do
      url "https://files.pythonhosted.org/packages/b3/01/c66a78d11886f8b6d18961c49af6f728b45ebd3f04d15a889e2e29eaf45/rich-13.7.0.tar.gz"
      sha256 "5cb5123b5cf9ee70584244246816e9114227e0b98ad9176eede6ad54bf5403fa"
    end
  
    resource "prettytable" do
      url "https://files.pythonhosted.org/packages/e1/c0/5e9c4d2a643a00a6f67578ef35485173de273a4567279e4f0c200c01386/prettytable-3.9.0.tar.gz"
      sha256 "f4ed94803c23073a90620b201965e5dc0bccf1760b7a7eaf3158cab8aaffdf34"
    end
  
    def install
      virtualenv_install_with_resources
    end
  
    test do
      system bin/"f1-cli", "--help"
    end
  end