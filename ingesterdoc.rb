# comment
# frozen_string_literal: true

# top-level class comment
class IngesterLambdaDoc < Formula
  desc "Ingester Lambda Doc"
  homepage "https://bitbucket.org/infomaker/"
  url  "https://s3-eu-west-1.amazonaws.com/cca-dev-bill-temp/ingester-doc/ingester-doc-2021-01-04T181604-adf84ca.tar.gz"
  sha256 "e864150f789f9d057563e36899a15057988517c7da0163cade9dde7d41909e9f"

  def install
    bin.install "ingester-doc"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test oc-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/ingester-doc"
  end
end
