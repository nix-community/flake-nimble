{
  description = ''A high-level async TDLib wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-telenim-master.flake = false;
  inputs.src-telenim-master.type = "github";
  inputs.src-telenim-master.owner = "Yardanico";
  inputs.src-telenim-master.repo = "telenim";
  inputs.src-telenim-master.ref = "refs/heads/master";
  inputs.src-telenim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-telenim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-telenim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-telenim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}