{
  description = ''Write GUI automation scripts with Nim'';
  inputs.src-autome-master.flake = false;
  inputs.src-autome-master.type = "github";
  inputs.src-autome-master.owner = "miere43";
  inputs.src-autome-master.repo = "autome";
  inputs.src-autome-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-autome-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-autome-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-autome-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}