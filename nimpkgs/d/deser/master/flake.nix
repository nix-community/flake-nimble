{
  description = ''De/serialization library for Nim '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-deser-master.flake = false;
  inputs.src-deser-master.type = "github";
  inputs.src-deser-master.owner = "gabbhack";
  inputs.src-deser-master.repo = "deser";
  inputs.src-deser-master.ref = "refs/heads/master";
  inputs.src-deser-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-deser-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-deser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-deser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}