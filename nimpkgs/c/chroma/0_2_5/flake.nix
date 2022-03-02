{
  description = ''Everything you want to do with colors.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-chroma-0_2_5.flake = false;
  inputs.src-chroma-0_2_5.type = "github";
  inputs.src-chroma-0_2_5.owner = "treeform";
  inputs.src-chroma-0_2_5.repo = "chroma";
  inputs.src-chroma-0_2_5.ref = "refs/tags/0.2.5";
  inputs.src-chroma-0_2_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-chroma-0_2_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chroma-0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chroma-0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}