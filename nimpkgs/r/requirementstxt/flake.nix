{
  description = ''
    Python requirements.txt generic parser for Nim
  '';
  inputs.src-requirementstxt.url = "https://github.com/juancarlospaco/nim-requirementstxt";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
