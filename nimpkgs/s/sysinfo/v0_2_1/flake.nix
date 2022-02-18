{
  description = ''Cross platform system information.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sysinfo-v0_2_1.flake = false;
  inputs.src-sysinfo-v0_2_1.type = "github";
  inputs.src-sysinfo-v0_2_1.owner = "treeform";
  inputs.src-sysinfo-v0_2_1.repo = "sysinfo";
  inputs.src-sysinfo-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sysinfo-v0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sysinfo-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sysinfo-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}