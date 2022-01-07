{
  description = ''
    A Nim IDE.
  '';
  inputs.src-aporia.url = "https://github.com/nim-lang/Aporia";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
