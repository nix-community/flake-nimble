{
  description = ''
    Print Debug for Nim, tiny 3 lines Lib, C Target
  '';
  inputs.src-printdebug.url = "https://github.com/juancarlospaco/nim-printdebug";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
