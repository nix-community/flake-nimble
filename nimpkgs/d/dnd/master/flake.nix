{
  description = ''Drag and drop source / target'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-dnd-master.flake = false;
  inputs.src-dnd-master.type = "github";
  inputs.src-dnd-master.owner = "adokitkat";
  inputs.src-dnd-master.repo = "dnd";
  inputs.src-dnd-master.ref = "refs/heads/master";
  
  
  inputs."gintro".type = "github";
  inputs."gintro".owner = "riinr";
  inputs."gintro".repo = "flake-nimble";
  inputs."gintro".ref = "flake-pinning";
  inputs."gintro".dir = "nimpkgs/g/gintro";

  outputs = { self, nixpkgs, flakeNimbleLib, src-dnd-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dnd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}