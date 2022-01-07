{
  description = ''
    Compiles jade templates to Nim procedures.
  '';
  inputs.src-jade-nim.url = "https://github.com/idlewan/jade-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
