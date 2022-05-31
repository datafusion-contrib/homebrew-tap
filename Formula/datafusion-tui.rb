# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DatafusionTui < Formula
  desc "Terminal based, extensible, interactive data analysis tool using SQL"
  homepage "https://github.com/datafusion-contrib/datafusion-tui"
  url "https://github.com/datafusion-contrib/datafusion-tui/releases/tag/v0.1.0"
  sha256 "f817fb5fca6ba51489feb95899070495872eafe853291f5a9c40a73f5d382423"
  license "Apache-2.0"

  depends_on "rust" => :build

  # building ballista requires installing rustfmt
  #depends_on "rustfmt" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "datafusion-tui")
  end

  #test do
  #  (testpath/"datafusion_test.sql").write("select 1+2 as n;")
  #  assert_equal "[{\"n\":3}]", shell_output("#{bin}/datafusion-cli -q --format json -f datafusion_test.sql").strip
  #end
end
