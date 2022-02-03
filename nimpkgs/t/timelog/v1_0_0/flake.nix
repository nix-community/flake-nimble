{
  description = ''Simple nimble package to log monotic timings'';
  inputs.src-timelog-v1_0_0.flake = false;
  inputs.src-timelog-v1_0_0.type = "github";
  inputs.src-timelog-v1_0_0.owner = "Clonkk";
  inputs.src-timelog-v1_0_0.repo = "timelog";
  inputs.src-timelog-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-timelog-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timelog-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timelog-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}