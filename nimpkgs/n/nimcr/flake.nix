{
  description = ''
    A small program to make Nim shebang-able without the overhead of compiling each time
  '';
  inputs.src-nimcr.url = "https://github.com/PMunch/nimcr";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
