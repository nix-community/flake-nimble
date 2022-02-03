{
  description = ''Disk-based sequences'';
  inputs.src-spills-0_1_0.flake = false;
  inputs.src-spills-0_1_0.type = "github";
  inputs.src-spills-0_1_0.owner = "andreaferretti";
  inputs.src-spills-0_1_0.repo = "spills";
  inputs.src-spills-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-spills-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spills-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spills-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}