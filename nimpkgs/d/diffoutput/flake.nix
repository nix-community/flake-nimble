{
  description = ''
    Collection of Diff stringifications (and reversals)
  '';
  inputs.src-diffoutput.url = "https://github.com/JohnAD/diffoutput";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
