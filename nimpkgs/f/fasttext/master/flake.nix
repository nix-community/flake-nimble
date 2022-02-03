{
  description = ''fastText porting in Nim'';
  inputs.src-fasttext-master.flake = false;
  inputs.src-fasttext-master.type = "github";
  inputs.src-fasttext-master.owner = "bung87";
  inputs.src-fasttext-master.repo = "fastText";
  inputs.src-fasttext-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fasttext-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fasttext-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fasttext-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}