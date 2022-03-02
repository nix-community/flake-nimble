{
  description = ''Drag and drop source / target'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-dnd-master.flake = false;
  inputs.src-dnd-master.type = "github";
  inputs.src-dnd-master.owner = "adokitkat";
  inputs.src-dnd-master.repo = "dnd";
  inputs.src-dnd-master.ref = "refs/heads/master";
  inputs.src-dnd-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."gintro".type = "github";
  # inputs."gintro".owner = "riinr";
  # inputs."gintro".repo = "flake-nimble";
  # inputs."gintro".ref = "flake-pinning";
  # inputs."gintro".dir = "nimpkgs/g/gintro";
  # inputs."gintro".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."gintro".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-dnd-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dnd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}