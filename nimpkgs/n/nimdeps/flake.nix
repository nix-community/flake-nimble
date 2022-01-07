{
  description = ''
    Nim library to bundle dependency files into executable
  '';
  inputs.src-nimdeps.url = "https://github.com/genotrance/nimdeps";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
