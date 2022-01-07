{
  description = ''
    High-level nim wrapper for C/C++ parsing
  '';
  inputs.src-hcparse.url = "https://github.com/haxscramper/hcparse";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
