{
  description = ''Nim - Java bridge'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-jnim-v0_5.flake = false;
  inputs.src-jnim-v0_5.type = "github";
  inputs.src-jnim-v0_5.owner = "yglukhov";
  inputs.src-jnim-v0_5.repo = "jnim";
  inputs.src-jnim-v0_5.ref = "refs/tags/v0.5";
  inputs.src-jnim-v0_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jnim-v0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jnim-v0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jnim-v0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}