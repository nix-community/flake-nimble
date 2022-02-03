{
  description = ''Ladder logic macros for Nim'';
  inputs.src-ladder-master.flake = false;
  inputs.src-ladder-master.type = "gitlab";
  inputs.src-ladder-master.owner = "ryukoposting";
  inputs.src-ladder-master.repo = "nim-ladder";
  inputs.src-ladder-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ladder-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ladder-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ladder-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}