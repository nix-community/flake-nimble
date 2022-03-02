{
  description = ''Elegant optional types'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-questionable-0_10_2.flake = false;
  inputs.src-questionable-0_10_2.type = "github";
  inputs.src-questionable-0_10_2.owner = "markspanbroek";
  inputs.src-questionable-0_10_2.repo = "questionable";
  inputs.src-questionable-0_10_2.ref = "refs/tags/0.10.2";
  inputs.src-questionable-0_10_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-questionable-0_10_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-questionable-0_10_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-questionable-0_10_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}