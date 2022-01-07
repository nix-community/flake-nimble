{
  description = ''
    Bindings for zstd
  '';
  inputs.src-zstd.url = "https://github.com/wltsmrz/nim_zstd";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
