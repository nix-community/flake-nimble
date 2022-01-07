{
  description = ''
    JS {de,}serialization as it says on the tin
  '';
  inputs.src-jstin.url = "https://github.com/nim-lang/jstin";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
