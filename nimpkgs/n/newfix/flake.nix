{
  description = ''
    FIX Protocol optimized parser (Financial Information eXchange)
  '';
  inputs.src-newfix.url = "https://github.com/inv2004/newfix";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
