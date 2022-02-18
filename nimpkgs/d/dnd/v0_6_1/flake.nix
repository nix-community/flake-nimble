{
  description = ''Drag and drop source / target'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-dnd-v0_6_1.flake = false;
  inputs.src-dnd-v0_6_1.type = "github";
  inputs.src-dnd-v0_6_1.owner = "adokitkat";
  inputs.src-dnd-v0_6_1.repo = "dnd";
  inputs.src-dnd-v0_6_1.ref = "refs/tags/v0.6.1";
  
  
  inputs."gintro".type = "github";
  inputs."gintro".owner = "riinr";
  inputs."gintro".repo = "flake-nimble";
  inputs."gintro".ref = "flake-pinning";
  inputs."gintro".dir = "nimpkgs/g/gintro";

  outputs = { self, nixpkgs, flakeNimbleLib, src-dnd-v0_6_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnd-v0_6_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dnd-v0_6_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}