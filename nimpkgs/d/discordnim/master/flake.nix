{
  description = ''Discord library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-discordnim-master.flake = false;
  inputs.src-discordnim-master.type = "github";
  inputs.src-discordnim-master.owner = "Krognol";
  inputs.src-discordnim-master.repo = "discordnim";
  inputs.src-discordnim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-discordnim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-discordnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-discordnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}