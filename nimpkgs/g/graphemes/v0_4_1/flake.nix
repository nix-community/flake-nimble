{
  description = ''Grapheme aware string handling (Unicode tr29)'';
  inputs.src-graphemes-v0_4_1.flake = false;
  inputs.src-graphemes-v0_4_1.type = "github";
  inputs.src-graphemes-v0_4_1.owner = "nitely";
  inputs.src-graphemes-v0_4_1.repo = "nim-graphemes";
  inputs.src-graphemes-v0_4_1.ref = "refs/tags/v0.4.1";
  
  outputs = { self, nixpkgs, src-graphemes-v0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-graphemes-v0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-graphemes-v0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}