{
  description = ''
    A Jester web plugin that embeds key information into a JSON object.
  '';
  inputs.src-jesterjson.url = "https://github.com/JohnAD/jesterjson";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
