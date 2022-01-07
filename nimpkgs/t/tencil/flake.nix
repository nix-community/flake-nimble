{
  description = ''
    Tencil is a mustache-compatible JSON based template engine for Nim.
  '';
  inputs.src-tencil.url = "https://github.com/enimatek-nl/tencil";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
