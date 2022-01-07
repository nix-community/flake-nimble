{
  description = ''
    making Nim development easier in the command-line
  '';
  inputs.src-rodcli.url = "https://github.com/jabbalaci/NimCliHelper";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
