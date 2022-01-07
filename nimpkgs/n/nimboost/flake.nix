{
  description = ''
    Additions to the Nim's standard library, like boost for C++
  '';
  inputs.src-nimboost.url = "https://github.com/vegansk/nimboost";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
