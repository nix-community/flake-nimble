{
  description = ''
    Nim wrapper for libcurl.
  '';
  inputs.src-libcurl.url = "https://github.com/Araq/libcurl";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
