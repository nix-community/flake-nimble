{
  description = ''
    A wrapper for libui
  '';
  inputs.src-ui.url = "https://github.com/nim-lang/ui";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
