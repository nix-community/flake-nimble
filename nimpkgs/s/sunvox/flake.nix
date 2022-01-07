{
  description = ''
    Bindings for SunVox modular synthesizer
  '';
  inputs.src-sunvox.url = "https://github.com/exelotl/nim-sunvox";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
