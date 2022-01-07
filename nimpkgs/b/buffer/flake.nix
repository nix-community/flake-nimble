{
  description = ''
    buffer
  '';
  inputs.src-buffer.url = "https://github.com/bung87/buffer";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
