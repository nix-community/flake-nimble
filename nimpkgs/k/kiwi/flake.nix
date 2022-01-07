{
  description = ''
    Cassowary constraint solving
  '';
  inputs.src-kiwi.url = "https://github.com/yglukhov/kiwi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
