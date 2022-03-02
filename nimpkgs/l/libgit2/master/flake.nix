{
  description = ''Libgit2 low level wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-libgit2-master.flake = false;
  inputs.src-libgit2-master.type = "github";
  inputs.src-libgit2-master.owner = "barcharcraz";
  inputs.src-libgit2-master.repo = "libgit2-nim";
  inputs.src-libgit2-master.ref = "refs/heads/master";
  inputs.src-libgit2-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libgit2-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libgit2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libgit2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}