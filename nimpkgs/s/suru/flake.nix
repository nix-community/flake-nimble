{
  description = ''
    A tqdm-style progress bar in Nim
  '';
  inputs.src-suru.url = "https://github.com/de-odex/suru";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
