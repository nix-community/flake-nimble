{
  description = ''Everything you want to do with colors.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-chroma-0_2_4.flake = false;
  inputs.src-chroma-0_2_4.type = "github";
  inputs.src-chroma-0_2_4.owner = "treeform";
  inputs.src-chroma-0_2_4.repo = "chroma";
  inputs.src-chroma-0_2_4.ref = "refs/tags/0.2.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-chroma-0_2_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chroma-0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chroma-0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}