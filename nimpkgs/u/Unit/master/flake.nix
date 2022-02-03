{
  description = ''A library that provides unit types in nim'';
  inputs.src-Unit-master.flake = false;
  inputs.src-Unit-master.type = "github";
  inputs.src-Unit-master.owner = "momeemt";
  inputs.src-Unit-master.repo = "Unit";
  inputs.src-Unit-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-Unit-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Unit-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-Unit-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}