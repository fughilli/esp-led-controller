load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "io_tweag_rules_nixpkgs",
    sha256 = "1adb04dc0416915fef427757f4272c4f7dacefeceeefc50f683aec7f7e9b787a",
    strip_prefix = "rules_nixpkgs-0.12.0",
    urls = ["https://github.com/tweag/rules_nixpkgs/releases/download/v0.12.0/rules_nixpkgs-0.12.0.tar.gz"],
)

load("@io_tweag_rules_nixpkgs//nixpkgs:repositories.bzl", "rules_nixpkgs_dependencies")

rules_nixpkgs_dependencies()

load("@io_tweag_rules_nixpkgs//nixpkgs:nixpkgs.bzl", "nixpkgs_cc_configure", "nixpkgs_git_repository", "nixpkgs_package")

nixpkgs_git_repository(
    name = "nixpkgs",
    revision = "23.11",
)

load("//third_party:packages.bzl", "register_packages")

register_packages()
