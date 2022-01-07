{
  description = ''
    Nim-SMBExec - SMBExec implementation in Nim
  '';
  inputs.src-SMBExec.url = "https://github.com/elddy/SMB-Nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
