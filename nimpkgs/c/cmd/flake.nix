{
  description = ''
    interactive command prompt
  '';
  inputs.src-cmd.url = "https://github.com/samdmarshall/cmd.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
