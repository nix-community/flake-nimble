{
  description = ''Disk-based sequences'';
  inputs.src-spills-0_1_1.flake = false;
  inputs.src-spills-0_1_1.type = "github";
  inputs.src-spills-0_1_1.owner = "andreaferretti";
  inputs.src-spills-0_1_1.repo = "spills";
  inputs.src-spills-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-spills-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spills-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spills-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}