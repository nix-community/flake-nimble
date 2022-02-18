{
  description = ''A vim-based editor'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pvim-0_17_0.flake = false;
  inputs.src-pvim-0_17_0.type = "github";
  inputs.src-pvim-0_17_0.owner = "paranim";
  inputs.src-pvim-0_17_0.repo = "pvim";
  inputs.src-pvim-0_17_0.ref = "refs/tags/0.17.0";
  
  
  inputs."paravim".type = "github";
  inputs."paravim".owner = "riinr";
  inputs."paravim".repo = "flake-nimble";
  inputs."paravim".ref = "flake-pinning";
  inputs."paravim".dir = "nimpkgs/p/paravim";

  outputs = { self, nixpkgs, flakeNimbleLib, src-pvim-0_17_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pvim-0_17_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pvim-0_17_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}