{
  description = ''json de/serializer for tuples and more'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-jser-0_1_1.flake = false;
  inputs.src-jser-0_1_1.type = "github";
  inputs.src-jser-0_1_1.owner = "niv";
  inputs.src-jser-0_1_1.repo = "jser.nim";
  inputs.src-jser-0_1_1.ref = "refs/tags/0.1.1";
  inputs.src-jser-0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jser-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jser-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jser-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}