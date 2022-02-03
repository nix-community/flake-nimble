{
  description = ''Bencode serialization/deserialization library'';
  inputs.src-bencode-master.flake = false;
  inputs.src-bencode-master.type = "github";
  inputs.src-bencode-master.owner = "FedericoCeratto";
  inputs.src-bencode-master.repo = "nim-bencode";
  inputs.src-bencode-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-bencode-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bencode-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bencode-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}