{
  description = ''
    Collection of hash algorithms ported to Nim
  '';
  inputs.src-skyhash.url = "https://github.com/Skrylar/skyhash";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
