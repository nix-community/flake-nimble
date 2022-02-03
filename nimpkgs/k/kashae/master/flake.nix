{
  description = ''Calculation caching library'';
  inputs.src-kashae-master.flake = false;
  inputs.src-kashae-master.type = "github";
  inputs.src-kashae-master.owner = "beef331";
  inputs.src-kashae-master.repo = "kashae";
  inputs.src-kashae-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-kashae-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kashae-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-kashae-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}