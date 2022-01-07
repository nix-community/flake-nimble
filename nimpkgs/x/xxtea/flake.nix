{
  description = ''
    XXTEA encryption algorithm library written in pure Nim.
  '';
  inputs.src-xxtea.url = "https://github.com/xxtea/xxtea-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
