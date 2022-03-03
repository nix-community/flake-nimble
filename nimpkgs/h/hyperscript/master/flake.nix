{
  description = ''Create HyperText with Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hyperscript-master.flake = false;
  inputs.src-hyperscript-master.type = "github";
  inputs.src-hyperscript-master.owner = "schneiderfelipe";
  inputs.src-hyperscript-master.repo = "hyperscript";
  inputs.src-hyperscript-master.ref = "refs/heads/master";
  inputs.src-hyperscript-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hyperscript-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hyperscript-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hyperscript-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}