{
  description = ''A nil coalescing operator ?? for Nim'';
  inputs.src-coalesce-master.flake = false;
  inputs.src-coalesce-master.type = "github";
  inputs.src-coalesce-master.owner = "piedar";
  inputs.src-coalesce-master.repo = "coalesce";
  inputs.src-coalesce-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-coalesce-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-coalesce-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-coalesce-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}