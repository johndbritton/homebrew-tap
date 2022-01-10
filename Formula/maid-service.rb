class MaidService < Formula
  desc "Homebrew service for `benjaminoakes/maid`"
  homepage "https://github.com/benjaminoakes/maid"
  url "file:///dev/null"
  version "1"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  service do
    run ["~/.rbenv/shims/maid", "daemon"]
    keep_alive true
    log_path var/"log/maid.log"
    error_log_path var/"log/maid.log"
    working_dir HOMEBREW_PREFIX
  end

  test do
    system "false"
  end
end
