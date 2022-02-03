{
  description = ''Disk-based sequences'';
  inputs.src-spills-0_1_3.flake = false;
  inputs.src-spills-0_1_3.type = "github";
  inputs.src-spills-0_1_3.owner = "andreaferretti";
  inputs.src-spills-0_1_3.repo = "spills";
  inputs.src-spills-0_1_3.ref = "refs/tags/0.1.3";
  
  outputs = { self, nixpkgs, src-spills-0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spills-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spills-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}