{
  description = ''event emitter for nim'';
  inputs.src-eventemitter-master.flake = false;
  inputs.src-eventemitter-master.type = "github";
  inputs.src-eventemitter-master.owner = "al-bimani";
  inputs.src-eventemitter-master.repo = "eventemitter";
  inputs.src-eventemitter-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-eventemitter-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eventemitter-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eventemitter-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}