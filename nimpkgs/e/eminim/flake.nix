{
  description = ''
    JSON serialization framework
  '';
  inputs.src-eminim.url = "https://github.com/planetis-m/eminim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
