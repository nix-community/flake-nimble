{
  description = ''
    Nim functional programming library
  '';
  inputs.src-nimfp.url = "https://github.com/vegansk/nimfp";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
