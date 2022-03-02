{
  description = ''Wrapper for microsoft's DirectX libraries'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-directnimrod-master.flake = false;
  inputs.src-directnimrod-master.type = "bitbucket";
  inputs.src-directnimrod-master.owner = "barcharcraz";
  inputs.src-directnimrod-master.repo = "directnimrod";
  inputs.src-directnimrod-master.ref = "refs/heads/master";
  inputs.src-directnimrod-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-directnimrod-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-directnimrod-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-directnimrod-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}