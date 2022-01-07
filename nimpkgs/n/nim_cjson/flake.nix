{
  description = ''
    cjson wrapper for Nim
  '';
  inputs.src-nim_cjson.url = "https://github.com/muxueqz/nim_cjson";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
