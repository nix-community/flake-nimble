{
  description = ''
    HMAC-SHA1 and HMAC-MD5 hashing in Nim
  '';
  inputs.src-hmac.url = "https://github.com/OpenSystemsLab/hmac.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
