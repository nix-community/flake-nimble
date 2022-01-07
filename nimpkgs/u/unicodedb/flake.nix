{
  description = ''
    Unicode Character Database (UCD) access for Nim
  '';
  inputs.src-unicodedb.url = "https://github.com/nitely/nim-unicodedb";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
