{
  description = ''
    Firejail wrapper for Nim, Isolate your Production App before its too late!
  '';
  inputs.src-firejail.url = "https://github.com/juancarlospaco/nim-firejail";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
