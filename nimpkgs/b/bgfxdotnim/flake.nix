{
  description = ''
    bindings to bgfx c99 api
  '';
  inputs.src-bgfxdotnim.url = "https://github.com/zacharycarter/bgfx.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
