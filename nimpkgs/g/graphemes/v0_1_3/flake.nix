{
  description = ''Grapheme aware string handling (Unicode tr29)'';
  inputs.src-graphemes-v0_1_3.flake = false;
  inputs.src-graphemes-v0_1_3.type = "github";
  inputs.src-graphemes-v0_1_3.owner = "nitely";
  inputs.src-graphemes-v0_1_3.repo = "nim-graphemes";
  inputs.src-graphemes-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-graphemes-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-graphemes-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-graphemes-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}