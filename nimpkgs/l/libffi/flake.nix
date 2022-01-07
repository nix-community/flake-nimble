{
  description = ''
    libffi wrapper for Nim.
  '';
  inputs.src-libffi.url = "https://github.com/Araq/libffi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
