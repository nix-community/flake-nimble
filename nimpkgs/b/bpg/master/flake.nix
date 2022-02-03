{
  description = ''BPG (Better Portable Graphics) for Nim'';
  inputs.src-bpg-master.flake = false;
  inputs.src-bpg-master.type = "github";
  inputs.src-bpg-master.owner = "def-";
  inputs.src-bpg-master.repo = "nim-bpg";
  inputs.src-bpg-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-bpg-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bpg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bpg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}