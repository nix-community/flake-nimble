{
  description = ''small/tiny, flatfile, jsonl based, inprogress database for nim'';
  inputs.src-flatdb-master.flake = false;
  inputs.src-flatdb-master.type = "github";
  inputs.src-flatdb-master.owner = "enthus1ast";
  inputs.src-flatdb-master.repo = "flatdb";
  inputs.src-flatdb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-flatdb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flatdb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-flatdb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}