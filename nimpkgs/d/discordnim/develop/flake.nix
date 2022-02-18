{
  description = ''Discord library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-discordnim-develop.flake = false;
  inputs.src-discordnim-develop.type = "github";
  inputs.src-discordnim-develop.owner = "Krognol";
  inputs.src-discordnim-develop.repo = "discordnim";
  inputs.src-discordnim-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-discordnim-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-discordnim-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-discordnim-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}