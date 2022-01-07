{
  description = ''
    AWS Security Token Service API in Nim
  '';
  inputs.src-awsSTS.url = "https://github.com/ThomasTJdev/nim_awsSTS";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
