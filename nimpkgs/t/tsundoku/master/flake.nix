{
  description = ''Simple and lightweight OPDS ebook server'';
  inputs.src-tsundoku-master.flake = false;
  inputs.src-tsundoku-master.type = "github";
  inputs.src-tsundoku-master.owner = "FedericoCeratto";
  inputs.src-tsundoku-master.repo = "tsundoku";
  inputs.src-tsundoku-master.ref = "refs/heads/master";
  
  
  inputs."jester".url = "path:../../../j/jester";
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  outputs = { self, nixpkgs, src-tsundoku-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tsundoku-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tsundoku-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}