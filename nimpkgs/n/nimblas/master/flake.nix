{
  description = ''BLAS for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimblas-master.flake = false;
  inputs.src-nimblas-master.type = "github";
  inputs.src-nimblas-master.owner = "andreaferretti";
  inputs.src-nimblas-master.repo = "nimblas";
  inputs.src-nimblas-master.ref = "refs/heads/master";
  inputs.src-nimblas-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimblas-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimblas-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimblas-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}