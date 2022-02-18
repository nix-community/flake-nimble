{
  description = ''User Agent parser for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-useragents-0_1_1.flake = false;
  inputs.src-useragents-0_1_1.type = "github";
  inputs.src-useragents-0_1_1.owner = "treeform";
  inputs.src-useragents-0_1_1.repo = "useragents";
  inputs.src-useragents-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-useragents-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-useragents-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-useragents-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}