{
  description = ''An Atom, RSS, and JSONfeed parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-feednim-master.flake = false;
  inputs.src-feednim-master.type = "github";
  inputs.src-feednim-master.owner = "johnconway";
  inputs.src-feednim-master.repo = "feed-nim";
  inputs.src-feednim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-feednim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-feednim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-feednim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}