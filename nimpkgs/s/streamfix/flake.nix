{
  description = ''
    FIX Protocol streaming parser (Financial Information eXchange)
  '';
  inputs.src-streamfix.url = "https://github.com/inv2004/streamfix";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
