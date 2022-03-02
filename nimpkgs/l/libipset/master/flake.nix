{
  description = ''libipset wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-libipset-master.flake = false;
  inputs.src-libipset-master.type = "github";
  inputs.src-libipset-master.owner = "ba0f3";
  inputs.src-libipset-master.repo = "libipset.nim";
  inputs.src-libipset-master.ref = "refs/heads/master";
  inputs.src-libipset-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libipset-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libipset-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libipset-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}