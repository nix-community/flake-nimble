{
  description = ''Variable length arrays for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-vla-master.flake = false;
  inputs.src-vla-master.type = "github";
  inputs.src-vla-master.owner = "bpr";
  inputs.src-vla-master.repo = "vla";
  inputs.src-vla-master.ref = "refs/heads/master";
  inputs.src-vla-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-vla-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vla-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-vla-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}