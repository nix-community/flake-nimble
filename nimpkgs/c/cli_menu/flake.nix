{
  description = ''
    A library to create interactive commandline menus without writing boilerplate code.
  '';
  inputs.src-cli_menu.url = "https://github.com/MnlPhlp/cli_menu";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
