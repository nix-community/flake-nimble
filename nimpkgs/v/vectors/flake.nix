{
  description = ''
    Simple multidimensional vector math
  '';
  inputs.src-vectors.url = "https://github.com/blamestross/nimrod-vectors";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
