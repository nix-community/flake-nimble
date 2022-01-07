{
  description = ''
    high level simple way to write PNGs
  '';
  inputs.src-simplepng.url = "https://github.com/jrenner/nim-simplepng";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
