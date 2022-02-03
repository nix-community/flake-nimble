{
  description = ''Test failing snippets from Nim's issues'';
  inputs.src-tissue-master.flake = false;
  inputs.src-tissue-master.type = "github";
  inputs.src-tissue-master.owner = "genotrance";
  inputs.src-tissue-master.repo = "tissue";
  inputs.src-tissue-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-tissue-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tissue-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tissue-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}