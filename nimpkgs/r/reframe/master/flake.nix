{
  description = ''Tools for working with re-frame ClojureScript projects'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-reframe-master.flake = false;
  inputs.src-reframe-master.type = "github";
  inputs.src-reframe-master.owner = "rosado";
  inputs.src-reframe-master.repo = "reframe.nim";
  inputs.src-reframe-master.ref = "refs/heads/master";
  inputs.src-reframe-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."edn".type = "github";
  # inputs."edn".owner = "riinr";
  # inputs."edn".repo = "flake-nimble";
  # inputs."edn".ref = "flake-pinning";
  # inputs."edn".dir = "nimpkgs/e/edn";
  # inputs."edn".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."edn".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-reframe-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-reframe-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-reframe-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}