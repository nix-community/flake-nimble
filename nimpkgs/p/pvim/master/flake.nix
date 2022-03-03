{
  description = ''A vim-based editor'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pvim-master.flake = false;
  inputs.src-pvim-master.type = "github";
  inputs.src-pvim-master.owner = "paranim";
  inputs.src-pvim-master.repo = "pvim";
  inputs.src-pvim-master.ref = "refs/heads/master";
  inputs.src-pvim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."paravim".type = "github";
  # inputs."paravim".owner = "riinr";
  # inputs."paravim".repo = "flake-nimble";
  # inputs."paravim".ref = "flake-pinning";
  # inputs."paravim".dir = "nimpkgs/p/paravim";
  # inputs."paravim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."paravim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-pvim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pvim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pvim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}