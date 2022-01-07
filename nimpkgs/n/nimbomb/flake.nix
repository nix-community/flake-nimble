{
  description = ''
    A GiantBomb-wiki wrapper for nim
  '';
  inputs.src-nimbomb.url = "https://github.com/Tyler-Yocolano/nimbomb";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
