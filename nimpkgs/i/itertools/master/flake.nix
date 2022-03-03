{
  description = ''Itertools for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-itertools-master.flake = false;
  inputs.src-itertools-master.type = "github";
  inputs.src-itertools-master.owner = "narimiran";
  inputs.src-itertools-master.repo = "itertools";
  inputs.src-itertools-master.ref = "refs/heads/master";
  inputs.src-itertools-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-itertools-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-itertools-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-itertools-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}