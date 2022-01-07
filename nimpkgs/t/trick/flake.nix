{
  description = ''
    Game Boy Advance image conversion library and more
  '';
  inputs.src-trick.url = "https://github.com/exelotl/trick";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
