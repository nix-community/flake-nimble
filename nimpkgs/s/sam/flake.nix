{
  description = ''
    Fast and just works JSON-Binding for Nim
  '';
  inputs.src-sam.url = "https://github.com/OpenSystemsLab/sam.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
