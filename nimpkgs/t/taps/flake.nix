{
  description = ''
    Transport Services Interface
  '';
  inputs.src-taps.url = "https://git.sr.ht/~ehmry/nim_taps";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
