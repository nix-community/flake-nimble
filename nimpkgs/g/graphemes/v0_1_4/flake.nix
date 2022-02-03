{
  description = ''Grapheme aware string handling (Unicode tr29)'';
  inputs.src-graphemes-v0_1_4.flake = false;
  inputs.src-graphemes-v0_1_4.type = "github";
  inputs.src-graphemes-v0_1_4.owner = "nitely";
  inputs.src-graphemes-v0_1_4.repo = "nim-graphemes";
  inputs.src-graphemes-v0_1_4.ref = "refs/tags/v0.1.4";
  
  outputs = { self, nixpkgs, src-graphemes-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-graphemes-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-graphemes-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}