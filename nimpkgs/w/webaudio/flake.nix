{
  description = ''
    API for Web Audio (JS)
  '';
  inputs.src-webaudio.url = "https://github.com/ftsf/nim-webaudio";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
