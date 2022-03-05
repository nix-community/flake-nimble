{
  description = ''Print is a set of pretty print macros, useful for print-debugging.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-print-0_2_0.flake = false;
  inputs.src-print-0_2_0.type = "github";
  inputs.src-print-0_2_0.owner = "treeform";
  inputs.src-print-0_2_0.repo = "print";
  inputs.src-print-0_2_0.ref = "refs/tags/0.2.0";
  inputs.src-print-0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-print-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-print-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-print-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}