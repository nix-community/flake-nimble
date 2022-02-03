{
  description = ''A library to help you write rest APIs'';
  inputs.src-nimbler-master.flake = false;
  inputs.src-nimbler-master.type = "github";
  inputs.src-nimbler-master.owner = "paul-nameless";
  inputs.src-nimbler-master.repo = "nimbler";
  inputs.src-nimbler-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimbler-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbler-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimbler-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}