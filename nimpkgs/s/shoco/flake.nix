{
  description = ''
    A fast compressor for short strings
  '';
  inputs.src-shoco.url = "https://github.com/onionhammer/shoconim.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
