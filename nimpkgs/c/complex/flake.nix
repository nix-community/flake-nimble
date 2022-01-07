{
  description = ''
    The ex-stdlib module complex.
  '';
  inputs.src-complex.url = "https://github.com/nim-lang/graveyard?subdir=complex";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
