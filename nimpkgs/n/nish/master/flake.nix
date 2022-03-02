{
  description = ''A Toy Shell Application'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nish-master.flake = false;
  inputs.src-nish-master.type = "github";
  inputs.src-nish-master.owner = "owlinux1000";
  inputs.src-nish-master.repo = "nish";
  inputs.src-nish-master.ref = "refs/heads/master";
  inputs.src-nish-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nish-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nish-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nish-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}