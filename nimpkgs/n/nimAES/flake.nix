{
  description = ''
    Advanced Encryption Standard, Rijndael Algorithm
  '';
  inputs.src-nimAES.url = "https://github.com/jangko/nimAES";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
