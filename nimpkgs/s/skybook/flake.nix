{
  description = ''
    Light weight bookmark manager(delicious alternative)
  '';
  inputs.src-skybook.url = "https://github.com/muxueqz/skybook";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
