{
  description = ''
    Semantic versioning parser for Nim. Allows the parsing of version strings into objects and the comparing of version objects.
  '';
  inputs.src-semver.url = "https://github.com/euantorano/semver.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
