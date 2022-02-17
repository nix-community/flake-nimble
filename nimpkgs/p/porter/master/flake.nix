{
  description = ''Simple extensible implementation of Porter stemmer algorithm'';
  inputs.src-porter-master.flake = false;
  inputs.src-porter-master.type = "github";
  inputs.src-porter-master.owner = "iourinski";
  inputs.src-porter-master.repo = "porter";
  inputs.src-porter-master.ref = "refs/heads/master";
  
  
  inputs."mutableseqs".type = "github";
  inputs."mutableseqs".owner = "riinr";
  inputs."mutableseqs".repo = "flake-nimble";
  inputs."mutableseqs".ref = "flake-pinning";
  inputs."mutableseqs".dir = "nimpkgs/m/mutableseqs";

  outputs = { self, nixpkgs, src-porter-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-porter-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-porter-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}