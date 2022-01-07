{
  description = ''
    Chipmunk7 demos for Nim
  '';
  inputs.src-chipmunk7_demos.url = "https://github.com/matkuki/chipmunk7_demos/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
