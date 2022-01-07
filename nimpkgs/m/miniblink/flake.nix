{
  description = ''
    A miniblink library for nim.
  '';
  inputs.src-miniblink.url = "https://github.com/lihf8515/miniblink";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
