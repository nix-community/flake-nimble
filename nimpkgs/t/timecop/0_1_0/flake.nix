{
  description = ''Time travelling for Nim'';
  inputs.src-timecop-0_1_0.flake = false;
  inputs.src-timecop-0_1_0.type = "github";
  inputs.src-timecop-0_1_0.owner = "ba0f3";
  inputs.src-timecop-0_1_0.repo = "timecop.nim";
  inputs.src-timecop-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."subhook".url = "path:../../../s/subhook";
  inputs."subhook".type = "github";
  inputs."subhook".owner = "riinr";
  inputs."subhook".repo = "flake-nimble";
  inputs."subhook".ref = "flake-pinning";
  inputs."subhook".dir = "nimpkgs/s/subhook";

  outputs = { self, nixpkgs, src-timecop-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timecop-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timecop-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}