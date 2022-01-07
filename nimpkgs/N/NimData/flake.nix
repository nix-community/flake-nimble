{
  description = ''
    DataFrame API enabling fast out-of-core data analytics
  '';
  inputs.src-NimData.url = "https://github.com/bluenote10/NimData";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
