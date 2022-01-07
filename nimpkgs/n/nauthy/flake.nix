{
  description = ''
    Nim library for One Time Password verification and generation.
  '';
  inputs.src-nauthy.url = "https://github.com/lzoz/nauthy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
