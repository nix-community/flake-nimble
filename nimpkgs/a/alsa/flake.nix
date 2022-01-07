{
  description = ''
    NIM bindings for ALSA-LIB c library
  '';
  inputs.src-alsa.url = "https://gitlab.com/eagledot/nim-alsa";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
