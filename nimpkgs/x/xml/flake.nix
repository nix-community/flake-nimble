{
  description = ''
    Pure Nim XML parser
  '';
  inputs.src-xml.url = "https://github.com/ba0f3/xml.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
