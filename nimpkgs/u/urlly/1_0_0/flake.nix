{
  description = ''URL and URI parsing for C and JS backend.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-urlly-1_0_0.flake = false;
  inputs.src-urlly-1_0_0.type = "github";
  inputs.src-urlly-1_0_0.owner = "treeform";
  inputs.src-urlly-1_0_0.repo = "urlly";
  inputs.src-urlly-1_0_0.ref = "refs/tags/1.0.0";
  inputs.src-urlly-1_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-urlly-1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-urlly-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-urlly-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}