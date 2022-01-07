{
  description = ''
    make-like for Nim. Describe your builds as tasks!
  '';
  inputs.src-nake.url = "https://github.com/fowlmouth/nake/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
