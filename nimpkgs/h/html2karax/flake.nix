{
  description = ''
    Converts html to karax.
  '';
  inputs.src-html2karax.url = "https://github.com/nim-lang-cn/html2karax";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
