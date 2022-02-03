{
  description = ''Nimble package manager'';
  inputs.src-nimble-master.flake = false;
  inputs.src-nimble-master.type = "github";
  inputs.src-nimble-master.owner = "nim-lang";
  inputs.src-nimble-master.repo = "nimble";
  inputs.src-nimble-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimble-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimble-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimble-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}