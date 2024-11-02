load("@io_tweag_rules_nixpkgs//nixpkgs:nixpkgs.bzl", "nixpkgs_package")

standard_packages = [
    "esptool",
    "python3",
]

def register_packages():
    for package in standard_packages:
        nixpkgs_package(
            name = package,
            nix_file_content = """
        with import <nixpkgs> {{}};
        {package}
        """.format(package = package),
            repositories = {"nixpkgs": "@nixpkgs"},
        )
