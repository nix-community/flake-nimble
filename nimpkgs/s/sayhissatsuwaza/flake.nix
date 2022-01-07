{
  description = ''
    Say hissatsuwaza (special attack) on your terminal.
  '';
  inputs.src-sayhissatsuwaza.url = "https://github.com/jiro4989/sayhissatsuwaza";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
