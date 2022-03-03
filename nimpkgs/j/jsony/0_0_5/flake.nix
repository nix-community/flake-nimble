{
  description = ''A loose, direct to object json parser with hooks.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-jsony-0_0_5.flake = false;
  inputs.src-jsony-0_0_5.type = "github";
  inputs.src-jsony-0_0_5.owner = "treeform";
  inputs.src-jsony-0_0_5.repo = "jsony";
  inputs.src-jsony-0_0_5.ref = "refs/tags/0.0.5";
  inputs.src-jsony-0_0_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jsony-0_0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsony-0_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jsony-0_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}