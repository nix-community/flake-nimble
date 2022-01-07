{
  description = ''
    Functional operations for iterators and slices, similar to sequtils
  '';
  inputs.src-iterutils.url = "https://github.com/def-/iterutils";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
