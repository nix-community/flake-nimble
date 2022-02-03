{
  description = ''Wrapper for the DevIL image library'';
  inputs.src-DevIL-master.flake = false;
  inputs.src-DevIL-master.type = "github";
  inputs.src-DevIL-master.owner = "Varriount";
  inputs.src-DevIL-master.repo = "DevIL";
  inputs.src-DevIL-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-DevIL-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-DevIL-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-DevIL-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}