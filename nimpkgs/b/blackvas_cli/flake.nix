{
  description = ''
    The Blackvas CLI
  '';
  inputs.src-blackvas_cli.url = "https://github.com/momeemt/BlackvasCli";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
