{
  description = ''Metaprogramming tools for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-metatools-master.flake = false;
  inputs.src-metatools-master.type = "github";
  inputs.src-metatools-master.owner = "jxy";
  inputs.src-metatools-master.repo = "metatools";
  inputs.src-metatools-master.ref = "refs/heads/master";
  inputs.src-metatools-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-metatools-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-metatools-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-metatools-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}