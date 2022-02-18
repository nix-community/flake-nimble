{
  description = ''A vim-based editor'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pvim-0_17_1.flake = false;
  inputs.src-pvim-0_17_1.type = "github";
  inputs.src-pvim-0_17_1.owner = "paranim";
  inputs.src-pvim-0_17_1.repo = "pvim";
  inputs.src-pvim-0_17_1.ref = "refs/tags/0.17.1";
  
  
  inputs."paravim".type = "github";
  inputs."paravim".owner = "riinr";
  inputs."paravim".repo = "flake-nimble";
  inputs."paravim".ref = "flake-pinning";
  inputs."paravim".dir = "nimpkgs/p/paravim";

  outputs = { self, nixpkgs, flakeNimbleLib, src-pvim-0_17_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pvim-0_17_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pvim-0_17_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}