{
  description = ''
    Nim wrapper for the LZ4 library. There is also a high-level API for easy use
  '';
  inputs.src-nimlz4.url = "https://github.com/dfdeshom/nimlz4.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
