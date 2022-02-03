{
  description = ''A Nim scheduler library that lets you kick off jobs at regular intervals.'';
  inputs.src-schedules-v0_2_0.flake = false;
  inputs.src-schedules-v0_2_0.type = "github";
  inputs.src-schedules-v0_2_0.owner = "soasme";
  inputs.src-schedules-v0_2_0.repo = "nim-schedules";
  inputs.src-schedules-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-schedules-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-schedules-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-schedules-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}