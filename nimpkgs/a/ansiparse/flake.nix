{
  description = ''
    Library to parse ANSI escape codes
  '';
  inputs.src-ansiparse.url = "https://github.com/PMunch/ansiparse";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
