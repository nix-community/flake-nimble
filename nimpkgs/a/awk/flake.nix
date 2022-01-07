{
  description = ''
    Nim for awk programmers
  '';
  inputs.src-awk.url = "https://github.com/greencardamom/awk";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
