{
  description = ''
    Fast JSON parser
  '';
  inputs.src-jq.url = "https://github.com/alialrahahleh/fjq";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
