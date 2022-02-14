{
  description = ''Drag and drop source / target'';
  inputs.src-dnd-master.flake = false;
  inputs.src-dnd-master.type = "github";
  inputs.src-dnd-master.owner = "adokitkat";
  inputs.src-dnd-master.repo = "dnd";
  inputs.src-dnd-master.ref = "refs/heads/master";
  
  
  inputs."gintro".url = "path:../../../g/gintro";
  inputs."gintro".type = "github";
  inputs."gintro".owner = "riinr";
  inputs."gintro".repo = "flake-nimble";
  inputs."gintro".ref = "flake-pinning";
  inputs."gintro".dir = "nimpkgs/g/gintro";

  outputs = { self, nixpkgs, src-dnd-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dnd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}