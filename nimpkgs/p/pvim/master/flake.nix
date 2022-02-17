{
  description = ''A vim-based editor'';
  inputs.src-pvim-master.flake = false;
  inputs.src-pvim-master.type = "github";
  inputs.src-pvim-master.owner = "paranim";
  inputs.src-pvim-master.repo = "pvim";
  inputs.src-pvim-master.ref = "refs/heads/master";
  
  
  inputs."paravim".type = "github";
  inputs."paravim".owner = "riinr";
  inputs."paravim".repo = "flake-nimble";
  inputs."paravim".ref = "flake-pinning";
  inputs."paravim".dir = "nimpkgs/p/paravim";

  outputs = { self, nixpkgs, src-pvim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pvim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pvim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}