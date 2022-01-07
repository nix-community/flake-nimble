{
  description = ''
    wraps GTK+ or Windows' open file dialogs
  '';
  inputs.src-dialogs.url = "https://github.com/nim-lang/dialogs";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
