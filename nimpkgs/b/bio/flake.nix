{
  description = ''
    Bytes utils for Nim.
  '';
  inputs.src-bio.url = "https://github.com/xzeshen/bio";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
