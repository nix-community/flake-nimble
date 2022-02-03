{
  description = ''An implementation of cat in Nim'';
  inputs.src-nimcat-master.flake = false;
  inputs.src-nimcat-master.type = "github";
  inputs.src-nimcat-master.owner = "shakna-israel";
  inputs.src-nimcat-master.repo = "nimcat";
  inputs.src-nimcat-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimcat-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcat-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimcat-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}