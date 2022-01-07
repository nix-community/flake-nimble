{
  description = ''
    Convert strings to a slug. Can be used for URLs, file names, IDs etc.
  '';
  inputs.src-slugify.url = "https://github.com/lenniezelk/slugify";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
