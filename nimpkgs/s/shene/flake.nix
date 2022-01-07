{
  description = ''
    Interface for Nim.
  '';
  inputs.src-shene.url = "https://github.com/xflywind/shene";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
