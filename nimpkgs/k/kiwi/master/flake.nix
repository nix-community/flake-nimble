{
  description = ''Cassowary constraint solving'';
  inputs.src-kiwi-master.flake = false;
  inputs.src-kiwi-master.type = "github";
  inputs.src-kiwi-master.owner = "yglukhov";
  inputs.src-kiwi-master.repo = "kiwi";
  inputs.src-kiwi-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-kiwi-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kiwi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-kiwi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}