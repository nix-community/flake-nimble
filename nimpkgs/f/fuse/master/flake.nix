{
  description = ''A FUSE binding for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-fuse-master.flake = false;
  inputs.src-fuse-master.type = "github";
  inputs.src-fuse-master.owner = "akiradeveloper";
  inputs.src-fuse-master.repo = "nim-fuse";
  inputs.src-fuse-master.ref = "refs/heads/master";
  inputs.src-fuse-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fuse-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fuse-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fuse-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}