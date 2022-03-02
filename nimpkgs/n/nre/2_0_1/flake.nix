{
  description = ''A better regular expression library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nre-2_0_1.flake = false;
  inputs.src-nre-2_0_1.type = "github";
  inputs.src-nre-2_0_1.owner = "flaviut";
  inputs.src-nre-2_0_1.repo = "nre";
  inputs.src-nre-2_0_1.ref = "refs/tags/2.0.1";
  inputs.src-nre-2_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nre-2_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nre-2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nre-2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}