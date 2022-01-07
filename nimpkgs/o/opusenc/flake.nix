{
  description = ''
    Bindings to libopusenc
  '';
  inputs.src-opusenc.url = "https://git.sr.ht/~ehmry/nim_opusenc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
