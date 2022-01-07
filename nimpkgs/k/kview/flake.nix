{
  description = ''
    For karax html preview.
  '';
  inputs.src-kview.url = "https://github.com/planety/kview";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
