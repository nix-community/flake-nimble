{
  description = ''a simple test framework for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimsuite-develop.flake = false;
  inputs.src-nimsuite-develop.type = "github";
  inputs.src-nimsuite-develop.owner = "c6h4clch3";
  inputs.src-nimsuite-develop.repo = "NimSuite";
  inputs.src-nimsuite-develop.ref = "refs/heads/develop";
  inputs.src-nimsuite-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimsuite-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsuite-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimsuite-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}