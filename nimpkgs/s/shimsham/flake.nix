{
  description = ''
    Hashing/Digest collection in pure Nim
  '';
  inputs.src-shimsham.url = "https://github.com/apense/shimsham";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
