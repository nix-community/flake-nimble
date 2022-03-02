{
  description = ''A vim-based editor'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-pvim-0_2_0.flake = false;
  inputs.src-pvim-0_2_0.type = "github";
  inputs.src-pvim-0_2_0.owner = "paranim";
  inputs.src-pvim-0_2_0.repo = "pvim";
  inputs.src-pvim-0_2_0.ref = "refs/tags/0.2.0";
  inputs.src-pvim-0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."paravim".type = "github";
  # inputs."paravim".owner = "riinr";
  # inputs."paravim".repo = "flake-nimble";
  # inputs."paravim".ref = "flake-pinning";
  # inputs."paravim".dir = "nimpkgs/p/paravim";
  # inputs."paravim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."paravim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-pvim-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pvim-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pvim-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}