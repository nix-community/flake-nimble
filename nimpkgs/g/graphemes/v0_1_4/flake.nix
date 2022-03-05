{
  description = ''Grapheme aware string handling (Unicode tr29)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-graphemes-v0_1_4.flake = false;
  inputs.src-graphemes-v0_1_4.type = "github";
  inputs.src-graphemes-v0_1_4.owner = "nitely";
  inputs.src-graphemes-v0_1_4.repo = "nim-graphemes";
  inputs.src-graphemes-v0_1_4.ref = "refs/tags/v0.1.4";
  inputs.src-graphemes-v0_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-graphemes-v0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-graphemes-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-graphemes-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}