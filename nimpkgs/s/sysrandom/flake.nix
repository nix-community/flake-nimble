{
  description = ''
    A simple library to generate random data, using the system's PRNG.
  '';
  inputs.src-sysrandom.url = "https://github.com/euantorano/sysrandom.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
