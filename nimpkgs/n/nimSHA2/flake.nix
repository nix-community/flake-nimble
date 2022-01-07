{
  description = ''
    Secure Hash Algorithm - 2, [224, 256, 384, and 512 bits]
  '';
  inputs.src-nimSHA2.url = "https://github.com/jangko/nimSHA2";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
