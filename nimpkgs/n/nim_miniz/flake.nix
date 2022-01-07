{
  description = ''
    Nim wrapper for miniz
  '';
  inputs.src-nim_miniz.url = "https://github.com/h3rald/nim-miniz";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
