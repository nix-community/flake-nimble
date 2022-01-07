{
  description = ''
    Nimble package manager
  '';
  inputs.src-nimble.url = "https://github.com/nim-lang/nimble";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
