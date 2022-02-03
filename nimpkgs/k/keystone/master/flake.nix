{
  description = ''Bindings to the Keystone Assembler.'';
  inputs.src-keystone-master.flake = false;
  inputs.src-keystone-master.type = "github";
  inputs.src-keystone-master.owner = "6A";
  inputs.src-keystone-master.repo = "Keystone.nim";
  inputs.src-keystone-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-keystone-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-keystone-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-keystone-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}