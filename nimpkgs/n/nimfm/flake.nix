{
  description = ''
    A library for factorization machines in Nim.
  '';
  inputs.src-nimfm.url = "https://github.com/neonnnnn/nimfm";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
