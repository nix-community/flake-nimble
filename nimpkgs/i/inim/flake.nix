{
  description = ''
    Interactive Nim Shell
  '';
  inputs.src-inim.url = "https://github.com/inim-repl/INim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
