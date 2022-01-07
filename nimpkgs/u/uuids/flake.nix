{
  description = ''
    UUID library for Nim
  '';
  inputs.src-uuids.url = "https://github.com/pragmagic/uuids/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
