{
  description = ''
    Convert Ogham inscriptions to latin text & vice versa.
  '';
  inputs.src-ogham.url = "https://github.com/stscoundrel/ogham-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
