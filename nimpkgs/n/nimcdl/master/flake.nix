{
  description = ''Circuit Design language made in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimcdl-master.flake = false;
  inputs.src-nimcdl-master.type = "gitlab";
  inputs.src-nimcdl-master.owner = "endes123321";
  inputs.src-nimcdl-master.repo = "nimcdl";
  inputs.src-nimcdl-master.ref = "refs/heads/master";
  inputs.src-nimcdl-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimcdl-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcdl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimcdl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}