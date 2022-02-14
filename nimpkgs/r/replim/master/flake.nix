{
  description = ''most quick REPL of nim'';
  inputs.src-replim-master.flake = false;
  inputs.src-replim-master.type = "github";
  inputs.src-replim-master.owner = "gmshiba";
  inputs.src-replim-master.repo = "replim";
  inputs.src-replim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-replim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-replim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-replim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}