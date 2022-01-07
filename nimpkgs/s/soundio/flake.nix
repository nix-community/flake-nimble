{
  description = ''
    Bindings for libsoundio
  '';
  inputs.src-soundio.url = "https://github.com/ul/soundio";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
