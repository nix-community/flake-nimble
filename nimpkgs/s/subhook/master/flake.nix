{
  description = ''subhook wrapper'';
  inputs.src-subhook-master.flake = false;
  inputs.src-subhook-master.type = "github";
  inputs.src-subhook-master.owner = "ba0f3";
  inputs.src-subhook-master.repo = "subhook.nim";
  inputs.src-subhook-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-subhook-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-subhook-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-subhook-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}