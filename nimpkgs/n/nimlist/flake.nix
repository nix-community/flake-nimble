{
  description = ''
    View nim packages in your browser.
  '';
  inputs.src-nimlist.url = "https://github.com/flenniken/nimlist";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
