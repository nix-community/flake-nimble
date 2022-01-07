{
  description = ''
    Very simple browser Javascript TTY web terminal
  '';
  inputs.src-webterminal.url = "https://github.com/JohnAD/webterminal";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
