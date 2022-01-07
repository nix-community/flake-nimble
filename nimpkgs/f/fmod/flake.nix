{
  description = ''
    Nim wrapper for the FMOD Low Level C API
  '';
  inputs.src-fmod.url = "https://github.com/johnnovak/nim-fmod";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
