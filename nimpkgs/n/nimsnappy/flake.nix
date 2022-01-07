{
  description = ''
    Nim wrapper for the snappy compression library. there is also a high-level API for easy use
  '';
  inputs.src-nimsnappy.url = "https://github.com/dfdeshom/nimsnappy.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
