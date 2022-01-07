{
  description = ''
    remarker_light is a command line tool for building a remark-based slideshow page very easily.
  '';
  inputs.src-remarker_light.url = "https://github.com/muxueqz/remarker_light";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
