{
  description = ''
    BGFX wrapper for the nim programming language.
  '';
  inputs.src-bgfx.url = "https://github.com/Halsys/nim-bgfx";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
