{
  description = ''A Nim scheduler library that lets you kick off jobs at regular intervals.'';
  inputs.src-schedules-v0_1_1.flake = false;
  inputs.src-schedules-v0_1_1.type = "github";
  inputs.src-schedules-v0_1_1.owner = "soasme";
  inputs.src-schedules-v0_1_1.repo = "nim-schedules";
  inputs.src-schedules-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-schedules-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-schedules-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-schedules-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}