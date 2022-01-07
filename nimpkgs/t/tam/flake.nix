{
  description = ''
    Tales of Maj'Eyal addon manager
  '';
  inputs.src-tam.url = "https://github.com/SolitudeSF/tam";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
