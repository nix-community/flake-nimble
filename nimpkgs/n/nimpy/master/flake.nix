{
  description = ''Nim - Python bridge'';
  inputs.src-nimpy-master.flake = false;
  inputs.src-nimpy-master.type = "github";
  inputs.src-nimpy-master.owner = "yglukhov";
  inputs.src-nimpy-master.repo = "nimpy";
  inputs.src-nimpy-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimpy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimpy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}