{
  description = ''
    Simple and compact fuzzing
  '';
  inputs.src-nimfuzz.url = "https://github.com/apense/nimfuzz";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
