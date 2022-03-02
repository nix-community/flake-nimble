{
  description = ''Nim Static Blog & Site Generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-pine-master.flake = false;
  inputs.src-pine-master.type = "github";
  inputs.src-pine-master.owner = "Willyboar";
  inputs.src-pine-master.repo = "pine";
  inputs.src-pine-master.ref = "refs/heads/master";
  inputs.src-pine-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."markdown".type = "github";
  # inputs."markdown".owner = "riinr";
  # inputs."markdown".repo = "flake-nimble";
  # inputs."markdown".ref = "flake-pinning";
  # inputs."markdown".dir = "nimpkgs/m/markdown";
  # inputs."markdown".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."markdown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."rainbow".type = "github";
  # inputs."rainbow".owner = "riinr";
  # inputs."rainbow".repo = "flake-nimble";
  # inputs."rainbow".ref = "flake-pinning";
  # inputs."rainbow".dir = "nimpkgs/r/rainbow";
  # inputs."rainbow".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."rainbow".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-pine-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pine-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pine-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}