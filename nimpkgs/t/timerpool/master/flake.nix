{
  description = ''threadsafe timerpool implementation for event purpose'';
  inputs.src-timerpool-master.flake = false;
  inputs.src-timerpool-master.type = "github";
  inputs.src-timerpool-master.owner = "mikra01";
  inputs.src-timerpool-master.repo = "timerpool";
  inputs.src-timerpool-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-timerpool-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timerpool-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timerpool-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}