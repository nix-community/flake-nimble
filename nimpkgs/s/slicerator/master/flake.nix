{
  description = ''Iterator package aimed at more ergonomic and efficient iterators.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-slicerator-master.flake = false;
  inputs.src-slicerator-master.type = "github";
  inputs.src-slicerator-master.owner = "beef331";
  inputs.src-slicerator-master.repo = "slicerator";
  inputs.src-slicerator-master.ref = "refs/heads/master";
  inputs.src-slicerator-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-slicerator-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-slicerator-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-slicerator-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}