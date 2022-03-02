{
  description = ''Go-like interfaces'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-interfaced-master.flake = false;
  inputs.src-interfaced-master.type = "github";
  inputs.src-interfaced-master.owner = "andreaferretti";
  inputs.src-interfaced-master.repo = "interfaced";
  inputs.src-interfaced-master.ref = "refs/heads/master";
  inputs.src-interfaced-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-interfaced-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-interfaced-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-interfaced-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}