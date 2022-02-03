{
  description = ''Grapheme aware string handling (Unicode tr29)'';
  inputs.src-graphemes-master.flake = false;
  inputs.src-graphemes-master.type = "github";
  inputs.src-graphemes-master.owner = "nitely";
  inputs.src-graphemes-master.repo = "nim-graphemes";
  inputs.src-graphemes-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-graphemes-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-graphemes-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-graphemes-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}