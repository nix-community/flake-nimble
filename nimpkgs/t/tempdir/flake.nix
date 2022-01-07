{
  description = ''
    A Nim library to create and manage temporary directories.
  '';
  inputs.src-tempdir.url = "https://github.com/euantorano/tempdir.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
