{
  description = ''Expat wrapper for Nim'';
  inputs.src-expat-master.flake = false;
  inputs.src-expat-master.type = "github";
  inputs.src-expat-master.owner = "nim-lang";
  inputs.src-expat-master.repo = "expat";
  inputs.src-expat-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-expat-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-expat-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-expat-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}