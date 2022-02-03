{
  description = ''A simple interactive calculator'';
  inputs.src-cal-v0_2_0.flake = false;
  inputs.src-cal-v0_2_0.type = "github";
  inputs.src-cal-v0_2_0.owner = "xflywind";
  inputs.src-cal-v0_2_0.repo = "cal";
  inputs.src-cal-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-cal-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cal-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cal-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}