{
  description = ''Nim implementation of Snappy compression algorithm'';
  inputs.src-nim-snappy-master.flake = false;
  inputs.src-nim-snappy-master.type = "github";
  inputs.src-nim-snappy-master.owner = "status-im";
  inputs.src-nim-snappy-master.repo = "nim-snappy";
  inputs.src-nim-snappy-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nim-snappy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim-snappy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nim-snappy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}