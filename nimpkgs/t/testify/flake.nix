{
  description = ''
    File-based unit testing system
  '';
  inputs.src-testify.url = "https://github.com/sealmove/testify";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
