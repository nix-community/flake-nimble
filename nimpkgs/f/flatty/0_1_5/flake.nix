{
  description = ''Serializer and tools for flat binary files.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-flatty-0_1_5.flake = false;
  inputs.src-flatty-0_1_5.type = "github";
  inputs.src-flatty-0_1_5.owner = "treeform";
  inputs.src-flatty-0_1_5.repo = "flatty";
  inputs.src-flatty-0_1_5.ref = "refs/tags/0.1.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-flatty-0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flatty-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-flatty-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}