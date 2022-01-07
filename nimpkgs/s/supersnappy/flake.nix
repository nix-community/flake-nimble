{
  description = ''
    Dependency-free and performant Nim Snappy implementation.
  '';
  inputs.src-supersnappy.url = "https://github.com/guzba/supersnappy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
