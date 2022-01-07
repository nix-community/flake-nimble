{
  description = ''
    A port of libnx to Nim
  '';
  inputs.src-libnx.url = "https://github.com/jyapayne/nim-libnx";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
