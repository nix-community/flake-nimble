{
  description = ''Implementation of JSON5.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-samson-master.flake = false;
  inputs.src-samson-master.type = "github";
  inputs.src-samson-master.owner = "GULPF";
  inputs.src-samson-master.repo = "samson";
  inputs.src-samson-master.ref = "refs/heads/master";
  inputs.src-samson-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-samson-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-samson-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-samson-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}