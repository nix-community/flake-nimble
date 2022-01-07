{
  description = ''
    Nim Z3 theorem prover bindings
  '';
  inputs.src-z3.url = "https://github.com/zevv/nimz3";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
