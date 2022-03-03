{
  description = ''A loose, direct to object json parser with hooks.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-jsony-0_0_2.flake = false;
  inputs.src-jsony-0_0_2.type = "github";
  inputs.src-jsony-0_0_2.owner = "treeform";
  inputs.src-jsony-0_0_2.repo = "jsony";
  inputs.src-jsony-0_0_2.ref = "refs/tags/0.0.2";
  inputs.src-jsony-0_0_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jsony-0_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsony-0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jsony-0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}