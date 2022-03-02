{
  description = ''Grapheme aware string handling (Unicode tr29)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-graphemes-v0_5_0.flake = false;
  inputs.src-graphemes-v0_5_0.type = "github";
  inputs.src-graphemes-v0_5_0.owner = "nitely";
  inputs.src-graphemes-v0_5_0.repo = "nim-graphemes";
  inputs.src-graphemes-v0_5_0.ref = "refs/tags/v0.5.0";
  inputs.src-graphemes-v0_5_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-graphemes-v0_5_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-graphemes-v0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-graphemes-v0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}