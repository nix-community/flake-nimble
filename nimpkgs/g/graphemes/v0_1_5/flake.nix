{
  description = ''Grapheme aware string handling (Unicode tr29)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-graphemes-v0_1_5.flake = false;
  inputs.src-graphemes-v0_1_5.type = "github";
  inputs.src-graphemes-v0_1_5.owner = "nitely";
  inputs.src-graphemes-v0_1_5.repo = "nim-graphemes";
  inputs.src-graphemes-v0_1_5.ref = "refs/tags/v0.1.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-graphemes-v0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-graphemes-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-graphemes-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}