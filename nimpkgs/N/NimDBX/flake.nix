{
  description = ''
    Fast persistent key-value store, based on libmdbx
  '';
  inputs.src-NimDBX.url = "https://github.com/snej/nimdbx";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
