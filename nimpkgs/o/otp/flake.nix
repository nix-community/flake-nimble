{
  description = ''
    One Time Password library for Nim
  '';
  inputs.src-otp.url = "https://github.com/OpenSystemsLab/otp.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
