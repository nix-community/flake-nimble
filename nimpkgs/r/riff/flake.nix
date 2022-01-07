{
  description = ''
    RIFF file handling for Nim 
  '';
  inputs.src-riff.url = "https://github.com/johnnovak/nim-riff";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
