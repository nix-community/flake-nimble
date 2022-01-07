{
  description = ''
    Converts HTML to Karax representation
  '';
  inputs.src-tokarax.url = "https://github.com/thisago/tokarax";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
