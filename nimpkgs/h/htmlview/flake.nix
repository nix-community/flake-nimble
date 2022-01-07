{
  description = ''
    View the offline or online html page in browser
  '';
  inputs.src-htmlview.url = "https://github.com/yuchunzhou/htmlview";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
