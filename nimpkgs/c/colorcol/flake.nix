{
  description = ''
    Kakoune plugin for color preview
  '';
  inputs.src-colorcol.url = "https://github.com/SolitudeSF/colorcol";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
