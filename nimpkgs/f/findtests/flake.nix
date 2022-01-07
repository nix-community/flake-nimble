{
  description = ''
    A helper module for writing unit tests in Nim with nake or similar build system.
  '';
  inputs.src-findtests.url = "https://github.com/jackvandrunen/findtests";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
