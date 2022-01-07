{
  description = ''
    A library for straightforward diff calculation
  '';
  inputs.src-simplediff.url = "https://git.sr.ht/~reesmichael1/nim-simplediff";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
