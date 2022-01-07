{
  description = ''
    Karax extension to convert html in string form to embeddable Karax vdom
  '';
  inputs.src-htmlToVdom.url = "https://github.com/C-NERD/htmlToVdom";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
