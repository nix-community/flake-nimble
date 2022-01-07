{
  description = ''
    Code writer for Cirru syntax
  '';
  inputs.src-cirru_writer.url = "https://github.com/Cirru/writer.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
