{
  description = ''
    A port of HSLuv, a human friendly alternative to HSL.
  '';
  inputs.src-hsluv.url = "https://github.com/isthisnagee/hsluv-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
