{
  description = ''
    Canonical JSON according to RFC8785
  '';
  inputs.src-canonicaljson.url = "https://github.com/jackhftang/canonicaljson.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
