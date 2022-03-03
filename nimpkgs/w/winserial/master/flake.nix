{
  description = ''Serial library for Windows.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-winserial-master.flake = false;
  inputs.src-winserial-master.type = "github";
  inputs.src-winserial-master.owner = "bunkford";
  inputs.src-winserial-master.repo = "winserial";
  inputs.src-winserial-master.ref = "refs/heads/master";
  inputs.src-winserial-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-winserial-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-winserial-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-winserial-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}