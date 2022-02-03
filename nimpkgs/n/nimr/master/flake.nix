{
  description = ''Helper to run nim code like a script'';
  inputs.src-nimr-master.flake = false;
  inputs.src-nimr-master.type = "github";
  inputs.src-nimr-master.owner = "Jeff-Ciesielski";
  inputs.src-nimr-master.repo = "nimr";
  inputs.src-nimr-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimr-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}