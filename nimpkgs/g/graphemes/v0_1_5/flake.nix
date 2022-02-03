{
  description = ''Grapheme aware string handling (Unicode tr29)'';
  inputs.src-graphemes-v0_1_5.flake = false;
  inputs.src-graphemes-v0_1_5.type = "github";
  inputs.src-graphemes-v0_1_5.owner = "nitely";
  inputs.src-graphemes-v0_1_5.repo = "nim-graphemes";
  inputs.src-graphemes-v0_1_5.ref = "refs/tags/v0.1.5";
  
  outputs = { self, nixpkgs, src-graphemes-v0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-graphemes-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-graphemes-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}