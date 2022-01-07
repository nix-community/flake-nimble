{
  description = ''
    WebP Tools wrapper for Nim
  '';
  inputs.src-webp.url = "https://github.com/juancarlospaco/nim-webp";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
