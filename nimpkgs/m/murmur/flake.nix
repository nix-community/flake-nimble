{
  description = ''
    MurmurHash in pure Nim.
  '';
  inputs.src-murmur.url = "https://github.com/olahol/nimrod-murmur/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
