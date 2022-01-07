{
  description = ''
    Low-level twitter API wrapper library for Nim.
  '';
  inputs.src-twitter.url = "https://github.com/snus-kin/twitter.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
