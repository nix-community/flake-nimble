{
  description = ''Bindings and a high-level interface for MongoDB'';
  inputs.src-mongo-master.flake = false;
  inputs.src-mongo-master.type = "github";
  inputs.src-mongo-master.owner = "nim-lang";
  inputs.src-mongo-master.repo = "mongo";
  inputs.src-mongo-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-mongo-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mongo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mongo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}