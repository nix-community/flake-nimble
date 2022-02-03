{
  description = ''Cross platform system information.'';
  inputs.src-sysinfo-v0_1_0.flake = false;
  inputs.src-sysinfo-v0_1_0.type = "github";
  inputs.src-sysinfo-v0_1_0.owner = "treeform";
  inputs.src-sysinfo-v0_1_0.repo = "sysinfo";
  inputs.src-sysinfo-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-sysinfo-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sysinfo-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sysinfo-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}